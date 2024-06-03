for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="asn" dataset.sample="seed" general.name="asn-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch' general.num_train=$num
done


for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="bio" dataset.sample="seed" general.name="bio-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch' general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="col" dataset.sample="seed" general.name="col-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch' general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="econ" dataset.sample="seed" general.name="econ-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch' general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="email" dataset.sample="seed" general.name="email-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch' general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="power" dataset.sample="seed" general.name="power-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch' general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="road" dataset.sample="seed" general.name="road-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch' general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="rt" dataset.sample="seed" general.name="rt-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch' general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="socfb" dataset.sample="seed" general.name="socfb-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch' general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="web" dataset.sample="seed" general.name="web-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch' general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="soc" dataset.sample="seed" general.name="soc-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch' general.num_train=$num
done

for num in 50 100 200 300 400 500
do
  python3 main.py dataset.name="citation" dataset.sample="seed" general.name="citation-seed marginal ${num}" model.transition="marginal" general.gpus=[0] train.batch_size=12 train.accumulate_grad_batches=4 general.setting='train_scratch' general.num_train=$num
done


