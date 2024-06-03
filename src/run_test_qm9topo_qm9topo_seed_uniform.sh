
domain='qm9topo'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "LGGM/outputs/qm9topo uniform/checkpoints/qm9topo uniform/"*; do
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main.py dataset.name="${domain}" dataset.sample="seed" general.name="test_qm9topo_${domain}_seed uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=16 general.setting="test"
    fi
done
echo "============================================================================================================"
