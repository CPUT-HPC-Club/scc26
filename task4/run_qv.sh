#!/bin/sh
#SBATCH --partition=club
#SBATCH --time=01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --job-name=qv
#SBATCH --output=qv_output.out
#SBATCH --error=qv_error.err


module load python3.10
source ~/scc26/task4/qiskitEnv/bin/activate

python3 ~/scc26/task4/qv_experiment.py
