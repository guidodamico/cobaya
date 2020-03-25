#!/bin/sh
#SBATCH --time=4:00:00
#SBATCH --partition=bdw 
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=1G
#SBATCH --output=out_A.txt
#SBATCH --job-name=chA

export OMP_NUM_THREADS=4
mpiexec -n 4 cobaya-run -f cosmo.yaml -o chains/challengeA
