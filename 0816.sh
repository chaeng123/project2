#!/bin/bash

#SBATCH --job-name data-analysis
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-gpu=4
#SBATCH --mem-per-gpu=3G
#SBATCH --time 1-0
#SBATCH --partition batch_grad
#SBATCH -o logs/slurm-%A-%x.out

python 0816.py

# letting slurm know this code finished without any problem
exit 0
