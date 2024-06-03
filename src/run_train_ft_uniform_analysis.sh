for num in 50 100 200 300 400 500
do
   python3 main.py dataset.name="asn" dataset.sample="seed" general.name="ft all wo asn - asn-seed uniform ${num}" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo asn-seed uniform/checkpoints/all wo asn-seed uniform/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

for num in 50 100 200 300 400 500
do
   python3 main.py dataset.name="bio" dataset.sample="seed" general.name="ft all wo bio - bio-seed uniform ${num}" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo bio-seed uniform/checkpoints/all wo bio-seed uniform/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="col" dataset.sample="seed" general.name="ft all wo col - col-seed uniform ${num}" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo col-seed uniform/checkpoints/all wo col-seed uniform/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done


for num in 50 100 200 300 400 500
do
   python3 main.py dataset.name="econ" dataset.sample="seed" general.name="ft all wo econ - econ-seed uniform ${num}" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo econ-seed uniform/checkpoints/all wo econ-seed uniform/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="email" dataset.sample="seed" general.name="ft all wo email - email-seed uniform ${num}" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo email-seed uniform/checkpoints/all wo email-seed uniform/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done


for num in 50 100 200 300 400 500
do
   python3 main.py dataset.name="power" dataset.sample="seed" general.name="ft all wo power - power-seed uniform ${num}" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo power-seed uniform/checkpoints/all wo power-seed uniform/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done


for num in 50 100 200 300 400 500
do
   python3 main.py dataset.name="road" dataset.sample="seed" general.name="ft all wo road - road-seed uniform ${num}" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo road-seed uniform/checkpoints/all wo road-seed uniform/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

for num in 50 100 200 300 400 500
do
   python3 main.py dataset.name="rt" dataset.sample="seed" general.name="ft all wo rt - rt-seed uniform ${num}" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo rt-seed uniform/checkpoints/all wo rt-seed uniform/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done


for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="socfb" dataset.sample="seed" general.name="ft all wo socfb - socfb-seed uniform ${num}" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo socfb-seed uniform/checkpoints/all wo socfb-seed uniform/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="web" dataset.sample="seed" general.name="ft all wo web - web-seed uniform ${num}" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo web-seed uniform/checkpoints/all wo web-seed uniform/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="soc" dataset.sample="seed" general.name="ft all wo soc - soc-seed uniform ${num}" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo soc-seed uniform/checkpoints/all wo soc-seed uniform/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="citation" dataset.sample="seed" general.name="ft all wo citation - citation-seed uniform ${num}" model.transition="uniform" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_from_pretrained' general.ckpt_path='LGGM/outputs/all wo citation-seed uniform/checkpoints/all wo citation-seed uniform/last-v1.ckpt' train.n_epochs=600 general.wandb="disabled" general.num_train=$num
done
