import torch
from distributions import DistributionNodes
from utils import to_dense
from torch_geometric.loader import DataLoader
from torch_geometric.data import Data
from torch_geometric.utils import remove_self_loops, to_undirected
import os

def arrange_data(adj_matrix):
    n_nodes = adj_matrix.shape[0]

    edge_index = adj_matrix.nonzero().t()
    edge_attr = torch.tensor([[0, 1] for _ in range(edge_index.shape[1])])

    edge_index, edge_attr = to_undirected(edge_index, edge_attr, n_nodes, reduce = 'mean')
    edge_index, edge_attr = remove_self_loops(edge_index, edge_attr)

    x = torch.ones((n_nodes, 1))
    y = torch.empty(1, 0)


    return Data(x=x, edge_index=edge_index, edge_attr=edge_attr, y=y)



def load_dataset(dataname, batch_size, hydra_path, sample, num_train):
    domains = ['asn', 'bio', 'chem', 'col', 'eco', 'econ', 'email', 'power', 'road', 'rt', 'socfb', 'web', 'citation', 'soc', 'qm9topo']
    
    for domain in domains:
        if not os.path.exists(f'{hydra_path}/../graphs{sample}/{domain}/train.pt'):
            print(111, domain)
            data = torch.load(f'{hydra_path}/../graphs{sample}/{domain}/{domain}.pt')

            #fix seed
            torch.manual_seed(0)

            #random permute and split
            n = len(data)
            indices = torch.randperm(n)

            if domain == 'eco':
                train_indices = indices[:4].repeat(50)
                val_indices = indices[4:5].repeat(50)
                test_indices = indices[5:]
            else:
                train_indices = indices[:int(0.8 * n)]
                val_indices = indices[int(0.8 * n):int(0.9 * n)]
                test_indices = indices[int(0.9 * n):]

            train_data = [data[_] for _ in train_indices]
            val_data = [data[_] for _ in val_indices]
            test_data = [data[_] for _ in test_indices]

            torch.save(train_indices, f'{hydra_path}/../graphs{sample}/{domain}/train_indices.pt')
            torch.save(val_indices, f'{hydra_path}/../graphs{sample}/{domain}/val_indices.pt')
            torch.save(test_indices, f'{hydra_path}/../graphs{sample}/{domain}/test_indices.pt')
            
            torch.save(train_data, f'{hydra_path}/../graphs{sample}/{domain}/train.pt')
            torch.save(val_data, f'{hydra_path}/../graphs{sample}/{domain}/val.pt')
            torch.save(test_data, f'{hydra_path}/../graphs{sample}/{domain}/test.pt')

    if dataname in domains:
        print(222, dataname)

        if num_train == -1:
            train_data = [arrange_data(_) for _ in torch.load(f'{hydra_path}/../graphs{sample}/{dataname}/train.pt')]
        else:
            train_data = [arrange_data(_) for _ in torch.load(f'{hydra_path}/../graphs{sample}/{dataname}/train.pt')][:num_train]
        val_data = [arrange_data(_) for _ in torch.load(f'{hydra_path}/../graphs{sample}/{dataname}/val.pt')]

        if dataname != 'eco':
            test_data = [arrange_data(_) for _ in torch.load(f'{hydra_path}/../graphs{sample}/{dataname}/test.pt')]
        else:
            test_data = [arrange_data(_) for _ in torch.load(f'{hydra_path}/../graphs{sample}/{dataname}/train.pt')] + [arrange_data(_) for _ in torch.load(f'{hydra_path}/../graphs{sample}/{dataname}/val.pt')] + [arrange_data(_) for _ in torch.load(f'{hydra_path}/../graphs{sample}/{dataname}/test.pt')]
            
    elif 'wo' in dataname:
        held_out = dataname.split('wo')[-1].strip(' ')
        train_data, val_data, test_data = [], [], []

        for domain in domains:
            if domain == held_out or domain == 'qm9topo':
                continue
            
            train_data.extend([arrange_data(_) for _ in torch.load(f'{hydra_path}/../graphs{sample}/{domain}/train.pt')])
            val_data.extend([arrange_data(_) for _ in torch.load(f'{hydra_path}/../graphs{sample}/{domain}/val.pt')])
            test_data.extend([arrange_data(_) for _ in torch.load(f'{hydra_path}/../graphs{sample}/{domain}/test.pt')])
    elif dataname == 'all':
        train_data, val_data, test_data = [], [], []

        for domain in domains:
            if domain == 'qm9topo':
                continue
            
        train_data.extend([arrange_data(_) for _ in torch.load(f'{hydra_path}/../graphs{sample}/{domain}/train.pt')])
        val_data.extend([arrange_data(_) for _ in torch.load(f'{hydra_path}/../graphs{sample}/{domain}/val.pt')])
        test_data.extend([arrange_data(_) for _ in torch.load(f'{hydra_path}/../graphs{sample}/{domain}/test.pt')])
        

    print('Size of dataset', len(train_data), len(val_data), len(test_data))

    train_loader = DataLoader(train_data, batch_size = batch_size, shuffle=True)
    val_loader = DataLoader(val_data, batch_size = batch_size, shuffle=False)
    test_loader = DataLoader(test_data, batch_size=batch_size, shuffle=False)


    return train_loader, val_loader, test_loader

def init_dataset(dataname, batch_size, hydra_path, sample, num_train):
    train_loader, val_loader, test_loader = load_dataset(dataname, batch_size, hydra_path, sample, num_train)

    n_nodes = node_counts(1000, train_loader, val_loader)
    node_types = torch.tensor([1]) #No node types
    edge_types = edge_counts(train_loader)
    
    num_classes = len(node_types)
    max_n_nodes = len(n_nodes) - 1
    nodes_dist = DistributionNodes(n_nodes)


    # print('Distribution of Number of Nodes:', n_nodes)
    # print('Distribution of Node Types:', node_types)
    # print('Distribution of Edge Types:', edge_types)
    
    data_loaders = {'train': train_loader, 'val': val_loader, 'test': test_loader}

    return data_loaders, num_classes, max_n_nodes, nodes_dist, edge_types, node_types, n_nodes


def node_counts(max_nodes_possible, train_loader, val_loader):
    #Count the distribution of graph size
    all_counts = torch.zeros(max_nodes_possible)
    
    for loader in [train_loader, val_loader]:
        for data in loader:
            unique, counts = torch.unique(data.batch, return_counts=True)
            for count in counts:
                all_counts[count] += 1

    max_index = max(all_counts.nonzero())
    all_counts = all_counts[:max_index + 1]
    all_counts = all_counts / all_counts.sum()
    
    return all_counts


def node_types(train_loader):
    #Count the marginal distribution of node types
    num_classes = None
    for data in train_loader:
        num_classes = data.x.shape[1]
        break

    counts = torch.zeros(num_classes)

    for i, data in enumerate(train_loader):
        counts += data.x.sum(dim=0)

    counts = counts / counts.sum()
    return counts

def edge_counts(train_loader):
    #Count the marginal distribution of edge types
    num_classes = None
    for data in train_loader:
        num_classes = data.edge_attr.shape[1]
        break

    d = torch.zeros(num_classes, dtype=torch.float)

    for i, data in enumerate(train_loader):
        unique, counts = torch.unique(data.batch, return_counts=True)

        all_pairs = 0
        for count in counts:
            all_pairs += count * (count - 1)

        
        num_edges = data.edge_index.shape[1]
        num_non_edges = all_pairs - num_edges
            
        edge_types = data.edge_attr.sum(dim=0)
        assert num_non_edges >= 0
        d[0] += num_non_edges
        d[1:] += edge_types[1:]

    d = d / d.sum()
    return d


def compute_input_output_dims(train_loader, extra_features, domain_features):
    example_batch = next(iter(train_loader))
    ex_dense, node_mask = to_dense(example_batch.x, example_batch.edge_index, example_batch.edge_attr, example_batch.batch)
    example_data = {'X_t': ex_dense.X, 'E_t': ex_dense.E, 'y_t': example_batch['y'], 'node_mask': node_mask}

    input_dims = {'X': example_batch['x'].size(1),
                  'E': example_batch['edge_attr'].size(1),
                  'y': example_batch['y'].size(1) + 1}      # + 1 due to time conditioning
    
    ex_extra_feat = extra_features(example_data)
    input_dims['X'] += ex_extra_feat.X.size(-1)
    input_dims['E'] += ex_extra_feat.E.size(-1)
    input_dims['y'] += ex_extra_feat.y.size(-1)

    ex_extra_molecular_feat = domain_features(example_data)
    input_dims['X'] += ex_extra_molecular_feat.X.size(-1)
    input_dims['E'] += ex_extra_molecular_feat.E.size(-1)
    input_dims['y'] += ex_extra_molecular_feat.y.size(-1)

    output_dims = {'X': example_batch['x'].size(1),
                   'E': example_batch['edge_attr'].size(1),
                   'y': 0}

    return input_dims, output_dims
