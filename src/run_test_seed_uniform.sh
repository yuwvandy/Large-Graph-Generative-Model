domain='asn'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/all wo ${domain}-seed uniform/checkpoints/all wo ${domain}-seed uniform/"*; do
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
    fi
done
echo "============================================================================================================"


domain='bio'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/all wo ${domain}-seed uniform/checkpoints/all wo ${domain}-seed uniform/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
    fi
done
echo "============================================================================================================"



domain='chem'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/all wo ${domain}-seed uniform/checkpoints/all wo ${domain}-seed uniform/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
    fi
done
echo "============================================================================================================"



domain='col'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/all wo ${domain}-seed uniform/checkpoints/all wo ${domain}-seed uniform/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
    fi
done
echo "============================================================================================================"


domain='eco'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/all wo ${domain}-seed uniform/checkpoints/all wo ${domain}-seed uniform/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
    fi
done
echo "============================================================================================================"



domain='econ'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/all wo ${domain}-seed uniform/checkpoints/all wo ${domain}-seed uniform/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
    fi
done
echo "============================================================================================================"




domain='email'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/all wo ${domain}-seed uniform/checkpoints/all wo ${domain}-seed uniform/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
    fi
done
echo "============================================================================================================"


domain='power'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/all wo ${domain}-seed uniform/checkpoints/all wo ${domain}-seed uniform/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
    fi
done
echo "============================================================================================================"


domain='road'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/all wo ${domain}-seed uniform/checkpoints/all wo ${domain}-seed uniform/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
    fi
done
echo "============================================================================================================"

domain='rt'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/all wo ${domain}-seed uniform/checkpoints/all wo ${domain}-seed uniform/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
    fi
doneecho "Load domain: all_wo_${domain}" "Eval domain: ${domain}"
echo "============================================================================================================"

domain='socfb'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/all wo ${domain}-seed uniform/checkpoints/all wo ${domain}-seed uniform/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
    fi
done
echo "============================================================================================================"


domain='web'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/all wo ${domain}-seed uniform/checkpoints/all wo ${domain}-seed uniform/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
    fi
done
echo "============================================================================================================"

domain='soc'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/all wo ${domain}-seed uniform/checkpoints/all wo ${domain}-seed uniform/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
    fi
done
echo "============================================================================================================"

domain='citation'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/all wo ${domain}-seed uniform/checkpoints/all wo ${domain}-seed uniform/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting='test'
    fi
done
echo "============================================================================================================"
