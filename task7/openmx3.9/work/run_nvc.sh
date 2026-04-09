#!/bin/bash
#SBATCH --job-name=NVC_Task7
#SBATCH --nodes=4
#SBATCH --ntasks=32
#SBATCH --time=01:00:00
#SBATCH --output=nvc_slurm.log

# Reload the exact toolbelt
module load openmpi/5.0.7-gcc-14.2.0
module load openBLAS/0.3.28-SANDYBRIDGE-vectorized-gcc-14.2.0-openmpi-5.0.7
module load fftw3
ml scalapack

# Execute OpenMX using all 32 cores across the 4 nodes!
mpirun -np 32 ./openmx 2-NVC.dat > NVC.std
