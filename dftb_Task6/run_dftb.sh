#!/bin/bash
ø
#SBATCH --job-name=dftb_water_task6
	#SBATCH --nodes=1
	#SBATCH --ntasks=1
	#SBATCH --cpus-per-task=1
	#SBATCH --time=00:10:00
	#SBATCH --output=water.out

	ulimit -s unlimited

	ml purge
	ml scalapack

	export PATH=${HOME}/local_mpi_bin:${PATH}
	export PATH=${HOME}/opt/dftbplus/bin:${PATH}
	export OMP_NUM_THREADS=${SLURM_CPUS_PER_TASK}

	dftb+
