#!/bin/bash
#SBATCH --job-name=hpl_best
#SBATCH --partition=club
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=16
#SBATCH --time=01:00:00
#SBATCH --output=HPL.out

module load openmpi/5.0.7-gcc-14.2.0
module load openBLAS/0.3.28-SANDYBRIDGE-vectorized-gcc-14.2.0-openmpi-5.0.7

cd ~/scc26/task5
mpirun -np 64 ./xhpl
