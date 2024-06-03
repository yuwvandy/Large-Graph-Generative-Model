echo "============================================================================================================"
domain='socfb'
for file in "LGGM/outputs/all-seed marginal/checkpoints/all-seed marginal/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="$domain" dataset.sample="seed" general.name="all marginal {$domain} eval" model.transition="marginal" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=4 general.setting='test'
    fi
done
echo "============================================================================================================"




echo "============================================================================================================"
domain='asn'
for file in "LGGM/outputs/all-seed marginal/checkpoints/all-seed marginal/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="$domain" dataset.sample="seed" general.name="all marginal {$domain} eval" model.transition="marginal" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=4 general.setting='test'
    fi
done
echo "============================================================================================================"



echo "============================================================================================================"
domain='email'
for file in "LGGM/outputs/all-seed marginal/checkpoints/all-seed marginal/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="$domain" dataset.sample="seed" general.name="all marginal {$domain} eval" model.transition="marginal" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=4 general.setting='test'
    fi
done
echo "============================================================================================================"


echo "============================================================================================================"
domain='web'
for file in "LGGM/outputs/all-seed marginal/checkpoints/all-seed marginal/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="$domain" dataset.sample="seed" general.name="all marginal {$domain} eval" model.transition="marginal" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=4 general.setting='test'
    fi
done
echo "============================================================================================================"

echo "============================================================================================================"
domain='road'
for file in "LGGM/outputs/all-seed marginal/checkpoints/all-seed marginal/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="$domain" dataset.sample="seed" general.name="all marginal {$domain} eval" model.transition="marginal" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=4 general.setting='test'
    fi
done
echo "============================================================================================================"

echo "============================================================================================================"
domain='power'
for file in "LGGM/outputs/all-seed marginal/checkpoints/all-seed marginal/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="$domain" dataset.sample="seed" general.name="all marginal {$domain} eval" model.transition="marginal" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=4 general.setting='test'
    fi
done
echo "============================================================================================================"

echo "============================================================================================================"
domain='bio'
for file in "LGGM/outputs/all-seed marginal/checkpoints/all-seed marginal/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="$domain" dataset.sample="seed" general.name="all marginal {$domain} eval" model.transition="marginal" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=4 general.setting='test'
    fi
done
echo "============================================================================================================"

echo "============================================================================================================"
domain='econ'
for file in "LGGM/outputs/all-seed marginal/checkpoints/all-seed marginal/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="$domain" dataset.sample="seed" general.name="all marginal {$domain} eval" model.transition="marginal" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=4 general.setting='test'
    fi
done
echo "============================================================================================================"

echo "============================================================================================================"
domain='rt'
for file in "LGGM/outputs/all-seed marginal/checkpoints/all-seed marginal/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="$domain" dataset.sample="seed" general.name="all marginal {$domain} eval" model.transition="marginal" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=4 general.setting='test'
    fi
done
echo "============================================================================================================"

echo "============================================================================================================"
domain='col'
for file in "LGGM/outputs/all-seed marginal/checkpoints/all-seed marginal/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="$domain" dataset.sample="seed" general.name="all marginal {$domain} eval" model.transition="marginal" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=4 general.setting='test'
    fi
done
echo "============================================================================================================"

echo "============================================================================================================"
domain='eco'
for file in "LGGM/outputs/all-seed marginal/checkpoints/all-seed marginal/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="$domain" dataset.sample="seed" general.name="all marginal {$domain} eval" model.transition="marginal" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=4 general.setting='test'
    fi
done
echo "============================================================================================================"

echo "============================================================================================================"
domain='citation'
for file in "LGGM/outputs/all-seed marginal/checkpoints/all-seed marginal/"*; do
    echo "Load file: ${file}"
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="$domain" dataset.sample="seed" general.name="all marginal {$domain} eval" model.transition="marginal" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=4 general.setting='test'
    fi
done
echo "============================================================================================================"





