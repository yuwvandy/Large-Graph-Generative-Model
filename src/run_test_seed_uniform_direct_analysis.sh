domain='asn'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for num in 50 100 200 300 400 500
do
    for file in "LGGM/outputs/${domain}-seed uniform ${num}/checkpoints/${domain}-seed uniform ${num}/"*; do
        echo "Load file: ${file}"
        file=$(echo "$file" | sed 's/=/\\=/g')
        echo "file: ${file}"
        
        # Check if the file ends with '.ckpt'
        if [[ "$file" == *".ckpt" ]]; then
            # Run the Python command with the current file
            python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform_direct analysis ${num}" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
        fi
    done
done
echo "============================================================================================================"

domain='bio'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for num in 50 100 200 300 400 500
do
    for file in "LGGM/outputs/${domain}-seed uniform ${num}/checkpoints/${domain}-seed uniform ${num}/"*; do
        echo "Load file: ${file}"
        file=$(echo "$file" | sed 's/=/\\=/g')
        echo "file: ${file}"
        
        # Check if the file ends with '.ckpt'
        if [[ "$file" == *".ckpt" ]]; then
            # Run the Python command with the current file
            python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform_direct analysis ${num}" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
        fi
    done
done
echo "============================================================================================================"


domain='col'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for num in 50 100 200 300 400 500
do
    for file in "LGGM/outputs/${domain}-seed uniform ${num}/checkpoints/${domain}-seed uniform ${num}/"*; do
        echo "Load file: ${file}"
        file=$(echo "$file" | sed 's/=/\\=/g')
        echo "file: ${file}"
        
        # Check if the file ends with '.ckpt'
        if [[ "$file" == *".ckpt" ]]; then
            # Run the Python command with the current file
            python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform_direct analysis ${num}" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
        fi
    done
done
echo "============================================================================================================"


domain='econ'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for num in 50 100 200 300 400 500
do
    for file in "LGGM/outputs/${domain}-seed uniform ${num}/checkpoints/${domain}-seed uniform ${num}/"*; do
        echo "Load file: ${file}"
        file=$(echo "$file" | sed 's/=/\\=/g')
        echo "file: ${file}"
        
        # Check if the file ends with '.ckpt'
        if [[ "$file" == *".ckpt" ]]; then
            # Run the Python command with the current file
            python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform_direct analysis ${num}" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
        fi
    done
done
echo "============================================================================================================"



domain='email'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for num in 50 100 200 300 400 500
do
    for file in "LGGM/outputs/${domain}-seed uniform ${num}/checkpoints/${domain}-seed uniform ${num}/"*; do
        echo "Load file: ${file}"
        file=$(echo "$file" | sed 's/=/\\=/g')
        echo "file: ${file}"
        
        # Check if the file ends with '.ckpt'
        if [[ "$file" == *".ckpt" ]]; then
            # Run the Python command with the current file
            python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform_direct analysis ${num}" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
        fi
    done
done
echo "============================================================================================================"


domain='power'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for num in 50 100 200 300 400 500
do
    for file in "LGGM/outputs/${domain}-seed uniform ${num}/checkpoints/${domain}-seed uniform ${num}/"*; do
        echo "Load file: ${file}"
        file=$(echo "$file" | sed 's/=/\\=/g')
        echo "file: ${file}"
        
        # Check if the file ends with '.ckpt'
        if [[ "$file" == *".ckpt" ]]; then
            # Run the Python command with the current file
            python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform_direct analysis ${num}" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
        fi
    done
done
echo "============================================================================================================"


domain='road'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for num in 50 100 200 300 400 500
do
    for file in "LGGM/outputs/${domain}-seed uniform ${num}/checkpoints/${domain}-seed uniform ${num}/"*; do
        echo "Load file: ${file}"
        file=$(echo "$file" | sed 's/=/\\=/g')
        echo "file: ${file}"
        
        # Check if the file ends with '.ckpt'
        if [[ "$file" == *".ckpt" ]]; then
            # Run the Python command with the current file
            python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform_direct analysis ${num}" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
        fi
    done
done
echo "============================================================================================================"


domain='rt'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for num in 50 100 200 300 400 500
do
    for file in "LGGM/outputs/${domain}-seed uniform ${num}/checkpoints/${domain}-seed uniform ${num}/"*; do
        echo "Load file: ${file}"
        file=$(echo "$file" | sed 's/=/\\=/g')
        echo "file: ${file}"
        
        # Check if the file ends with '.ckpt'
        if [[ "$file" == *".ckpt" ]]; then
            # Run the Python command with the current file
            python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform_direct analysis ${num}" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
        fi
    done
done
echo "============================================================================================================"


domain='socfb'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for num in 50 100 200 300 400 500
do
    for file in "LGGM/outputs/${domain}-seed uniform ${num}/checkpoints/${domain}-seed uniform ${num}/"*; do
        echo "Load file: ${file}"
        file=$(echo "$file" | sed 's/=/\\=/g')
        echo "file: ${file}"
        
        # Check if the file ends with '.ckpt'
        if [[ "$file" == *".ckpt" ]]; then
            # Run the Python command with the current file
            python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform_direct analysis ${num}" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
        fi
    done
done
echo "============================================================================================================"



domain='web'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for num in 50 100 200 300 400 500
do
    for file in "LGGM/outputs/${domain}-seed uniform ${num}/checkpoints/${domain}-seed uniform ${num}/"*; do
        echo "Load file: ${file}"
        file=$(echo "$file" | sed 's/=/\\=/g')
        echo "file: ${file}"
        
        # Check if the file ends with '.ckpt'
        if [[ "$file" == *".ckpt" ]]; then
            # Run the Python command with the current file
            python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform_direct analysis ${num}" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
        fi
    done
done
echo "============================================================================================================"



domain='soc'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for num in 50 100 200 300 400 500
do
    for file in "LGGM/outputs/${domain}-seed uniform ${num}/checkpoints/${domain}-seed uniform ${num}/"*; do
        echo "Load file: ${file}"
        file=$(echo "$file" | sed 's/=/\\=/g')
        echo "file: ${file}"
        
        # Check if the file ends with '.ckpt'
        if [[ "$file" == *".ckpt" ]]; then
            # Run the Python command with the current file
            python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform_direct analysis ${num}" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
        fi
    done
done
echo "============================================================================================================"



domain='citation'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for num in 50 100 200 300 400 500
do
    for file in "LGGM/outputs/${domain}-seed uniform ${num}/checkpoints/${domain}-seed uniform ${num}/"*; do
        echo "Load file: ${file}"
        file=$(echo "$file" | sed 's/=/\\=/g')
        echo "file: ${file}"
        
        # Check if the file ends with '.ckpt'
        if [[ "$file" == *".ckpt" ]]; then
            # Run the Python command with the current file
            python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform_direct analysis ${num}" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
        fi
    done
done
done
echo "============================================================================================================"
