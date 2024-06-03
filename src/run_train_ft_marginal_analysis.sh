for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="asn" dataset.sample="seed" general.name="ft all wo asn - asn-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo asn-seed marginal/checkpoints/all wo asn-seed marginal/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="bio" dataset.sample="seed" general.name="ft all wo bio - bio-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo bio-seed marginal/checkpoints/all wo bio-seed marginal/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="col" dataset.sample="seed" general.name="ft all wo col - col-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo col-seed marginal/checkpoints/all wo col-seed marginal/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done


for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="econ" dataset.sample="seed" general.name="ft all wo econ - econ-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo econ-seed marginal/checkpoints/all wo econ-seed marginal/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="email" dataset.sample="seed" general.name="ft all wo email - email-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo email-seed marginal/checkpoints/all wo email-seed marginal/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done


for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="power" dataset.sample="seed" general.name="ft all wo power - power-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo power-seed marginal/checkpoints/all wo power-seed marginal/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done


for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="road" dataset.sample="seed" general.name="ft all wo road - road-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo road-seed marginal/checkpoints/all wo road-seed marginal/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="rt" dataset.sample="seed" general.name="ft all wo rt - rt-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo rt-seed marginal/checkpoints/all wo rt-seed marginal/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done


for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="socfb" dataset.sample="seed" general.name="ft all wo socfb - socfb-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo socfb-seed marginal/checkpoints/all wo socfb-seed marginal/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="web" dataset.sample="seed" general.name="ft all wo web - web-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo web-seed marginal/checkpoints/all wo web-seed marginal/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="soc" dataset.sample="seed" general.name="ft all wo soc - soc-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo soc-seed marginal/checkpoints/all wo soc-seed marginal/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="citation" dataset.sample="seed" general.name="ft all wo citation - citation-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo citation-seed marginal/checkpoints/all wo citation-seed marginal/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

