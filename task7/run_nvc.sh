#!/bin/bash
#SBATCH -J Task7_NVC_Finished
#SBATCH -N 1                 # 1 node
#SBATCH --ntasks-per-node=8  # 8 MPI ranks
#SBATCH --cpus-per-task=2    # 2 OpenMP threads per rank
#SBATCH --mem=24G             # within available node memory
#SBATCH --time=00:59:00      # max 59 minutes
#SBATCH -o task7_output.log

module load gcc/15.2.0-source-omp openmpi/5.0.10-gcc-15.2.0     fftw3/3.3.10-vectorized-gcc-15.2.0-openmpi-5.0.10     openBLAS/0.3.28-SANDYBRIDGE-vectorized-gcc-15.2.0-openmpi-5.0.10     scalapack/2.2.3-vectorized-gcc-15.2.0-openmpi-5.0.10

# Optimization
export OMP_NUM_THREADS=2
export OMP_PROC_BIND=close

# Run
cd /home/turbo_threads/scc26/task7/input
mpirun -np 8 --map-by ppr:8:node:pe=2 --report-bindings ../openmx 2-NVC.dat -nt 2
