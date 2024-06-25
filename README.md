# LGGM

## Environment installation
Download anaconda/miniconda if needed

Create a rdkit environment that directly contains rdkit:
```
conda create -c conda-forge -n digress rdkit=2023.03.2 python=3.9
conda activate digress
```
Check that this line does not return an error:
```
python3 -c 'from rdkit import Chem'
```
Install graph-tool:
```
conda install -c conda-forge graph-tool=2.45
```
Check that this line does not return an error:
```
python3 -c 'import graph_tool as gt' 
```
Install the nvcc drivers for your cuda version. For example:
```
conda install -c "nvidia/label/cuda-11.8.0" cuda
```
Install a corresponding version of pytorch, for example:
```
pip3 install torch==2.0.1 --index-url https://download.pytorch.org/whl/cu118
```
Install other packages using the requirement file:
```
pip install -r requirements.txt
```
Run:
```
pip install -e .
```
Navigate to the ./src/analysis/orca directory and compile orca.cpp:
```
g++ -O2 -std=c++11 -o orca orca.cpp
```

## Dataset
```
https://huggingface.co/datasets/YuWang0103/LGGM/tree/main
```


## Running
```
cd src
```


# Marginal Setting

## Pre-training: Train on QM9Topo and evaluate on all other domains, Training on {Domain} and Evaluate on all wo {Domain}
```
bash run_train_seed_marginal.sh


bash run_test_seed_marginal.sh
bash run_test_qm9topo_others_seed_marginal.sh
```

## Fine-tuning: Fine-tune from pre-trained model on {Domain} and Evaluate on {Domain}
```
bash run_train_ft_seed_marginal.sh
bash run_train_qm9topo_ft_seed_marginal.sh

bash run_test_ft_seed_marginal.sh
bash run_test_qm9topo_ft_seed_marginal.sh
```

## Training from Scratch: Trai and Evaluate model trained on {Domain} and tested on {Domain}
```
run_train_seed_marginal_direct.sh
run_test_seed_marginal_direct.sh
```

## Evaluation Diffusion model trained on qm9 and tested on qm9
```
run_test_qm9topo_qm9topo_seed_marginal.sh
```


## Sensitive Analysis over number of graphs during Fine-tuning and Training from Scratch 
```
run_train_ft_marginal_analysis.sh
run_test_ft_marginal_analysis.sh


bash run_train_seed_marginal_direct_analysis.sh
bash run_test_seed_marginal_direct_analysis.sh
```


## Training Diffusion Models on All Domain Setting
```
bash run_train_marginal_all.sh
bash run_test_marginal_all.sh
```



# Uniform Setting

## Pre-training: Train on QM9Topo and evaluate on all other domains, Train on {Domain} and Evaluate on all wo {Domain}
```
bash run_train_seed_uniform.sh


bash run_test_seed_uniform.sh
bash run_test_qm9topo_others_seed_uniform.sh
```

## Fine-tuning: Fine-tune from pre-trained model on {Domain} and Evaluate on {Domain}
```
bash run_train_ft_seed_uniform.sh
bash run_train_qm9topo_ft_seed_uniform.sh

bash run_test_ft_seed_uniform.sh
bash run_test_qm9topo_ft_seed_uniform.sh
```

## Train from Scratch: Train and evaluate Diffusion model trained on {Domain} and tested on {Domain}
```
run_train_seed_uniform_direct.sh
run_test_seed_uniform_direct.sh
```

## Evaluation Diffusion model trained on qm9 and tested on qm9
```
run_test_qm9topo_qm9topo_seed_uniform.sh
```


## Sensitive Analysis over number of graphs for Fine-tune and Train from Scratch
```
run_train_ft_uniform_analysis.sh
run_test_ft_uniform_analysis.sh


bash run_train_seed_uniform_direct_analysis.sh
bash run_test_seed_uniform_direct_analysis.sh
```


## Training Diffusion Models on All Domain Setting
```
bash run_train_uniform_all.sh
bash run_test_uniform_all.sh
```



Note that this repository is heavily built upon a public GitHub repository DiGress.
