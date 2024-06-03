python3 main.py dataset.name="asn" dataset.sample="seed" general.name="asn-seed uniform" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch'

python3 main.py dataset.name="bio" dataset.sample="seed" general.name="bio-seed uniform" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch'

python3 main.py dataset.name="chem" dataset.sample="seed" general.name="chem-seed uniform" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch'



python3 main.py dataset.name="power" dataset.sample="seed" general.name="power-seed uniform" model.transition="uniform" general.gpus=[1] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch'

python3 main.py dataset.name="eco" dataset.sample="seed" general.name="eco-seed uniform" model.transition="uniform" general.gpus=[1] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch'

python3 main.py dataset.name="econ" dataset.sample="seed" general.name="econ-seed uniform" model.transition="uniform" general.gpus=[1] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch'



python3 main.py dataset.name="road" dataset.sample="seed" general.name="road-seed uniform" model.transition="uniform" general.gpus=[2] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch'

python3 main.py dataset.name="rt" dataset.sample="seed" general.name="rt-seed uniform" model.transition="uniform" general.gpus=[2] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch'

python3 main.py dataset.name="socfb" dataset.sample="seed" general.name="socfb-seed uniform" model.transition="uniform" general.gpus=[2] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch'




python3 main.py dataset.name="col" dataset.sample="seed" general.name="col-seed uniform" model.transition="uniform" general.gpus=[3] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch'

python3 main.py dataset.name="email" dataset.sample="seed" general.name="email-seed uniform" model.transition="uniform" general.gpus=[3] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch'

python3 main.py dataset.name="web" dataset.sample="seed" general.name="web-seed uniform" model.transition="uniform" general.gpus=[3] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch'

python3 main.py dataset.name="citation" dataset.sample="seed" general.name="citation-seed uniform" model.transition="uniform" general.gpus=[3] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch'

python3 main.py dataset.name="soc" dataset.sample="seed" general.name="soc-seed uniform" model.transition="uniform" general.gpus=[3] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch'
