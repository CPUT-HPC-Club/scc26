#!/bin/bash
#SBATCH --partition=club
#SBATCH --time=01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --cpus-per-task=1
#SBATCH --error=job.%J.err
#SBATCH --output=job.%J.out

# Load the run_milc() function
. ./milc_in.sh

# Set problem size
nx=36
ny=36
nz=36
nt=72

# Set run parameters
warms=0
trajecs=1
checklat=../lattices/36x36x36x72.chklat
save_cmd="forget"
reload_cmd="reload_parallel $checklat"
run_type="srun"

# Set number of ranks and threads (must match Slurm allocation)
export N=$SLURM_NTASKS
export S=$((SLURM_NTASKS / SLURM_NNODES / 2))
export threads_per_rank=$SLURM_CPUS_PER_TASK

# Load modules
ml gcc/15.2.0-source-omp
ml openmpi/5.0.10-gcc-15.2.0

# Set OpenMP threads
export OMP_NUM_THREADS=$threads_per_rank

# Run MILC
run_milc
