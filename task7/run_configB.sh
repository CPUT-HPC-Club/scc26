#!/bin/bash
#SBATCH -J Task7_ConfigB
#SBATCH -N 1
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --mem=24G
#SBATCH --time=00:10:00
#SBATCH -o configB_output.log

# Load modules
module load gcc/15.2.0-source-omp openmpi/5.0.10-gcc-15.2.0     fftw3/3.3.10-vectorized-gcc-15.2.0-openmpi-5.0.10     openBLAS/0.3.28-SANDYBRIDGE-vectorized-gcc-15.2.0-openmpi-5.0.10     scalapack/2.2.3-vectorized-gcc-15.2.0-openmpi-5.0.10

# OpenMP settings
export OMP_NUM_THREADS=4
export OMP_PROC_BIND=close

# Go to input directory
cd /home/turbo_threads/scc26/task7/input

# Run OpenMX
mpirun -np 4 --map-by socket:PE=4 --bind-to core --report-bindings ../openmx 2-NVC.dat -nt 4
