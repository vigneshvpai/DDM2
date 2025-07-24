#!/bin/bash -l
#
#SBATCH --partition=a100
#SBATCH --time=6:00:00
#SBATCH --export=NONE
#SBATCH --job-name=ddpm4gpu
#SBATCH --gres=gpu:a100:1
#SBATCH --partition=a100
#SBATCH --output=logs/ddpm_%j.out
#SBATCH --error=logs/ddpm_%j.err


unset SLURM_EXPORT_ENV

module load python
conda activate ddm2

./run_stage3.sh
