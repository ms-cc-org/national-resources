#!/bin/bash

##NECESSARY JOB SPECIFICATIONS
#SBATCH --job-name=JobExample2       #Set the job name to "JobExample2"
#SBATCH --time=0:10:00               #Set the wall clock limit to 6hr and 30min
#SBATCH --nodes=1                    #Request 1 node
#SBATCH --ntasks-per-node=1          #Request 1 tasks/cores per node
#SBATCH --mem=1G         	     #Request 1G (1GB) per node
#SBATCH --output=Example2.%j 	     #Redirect stdout/err to file
#SBATCH --partition=cpu              #Specify partition to submit job to


module load intelpython/2024.1.0_814
python3 monte_carlo.py
