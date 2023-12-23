#!/bin/bash
#SBATCH -A hpc0006168373
#SBATCH --partition=GPU
#SBATCH --job-name=test
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --gres=gpu:1
#SBATCH --qos=low
#SBATCH --get-user-env
#SBATCH --mail-type=end
#SBATCH --mail-user=1601110140@pku.edu.cn
#SBATCH --time=120:00:00
#SBATCH --output=%j.out
#SBATCH --error=%j.err

python test.py
