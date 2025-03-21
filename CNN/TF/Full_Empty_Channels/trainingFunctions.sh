#!/bin/bash

  #=================================================================
  #
  # Job script for running a job on a single GPU (any available GPU)
  #
  #=================================================================

  #======================================================
  # Propogate environment variables to the compute node
  #SBATCH --export=ALL
  #
  # Run in the gpu partition (queue) with any GPU
  #SBATCH --partition=gpu --gpus=1
  #
  # Specify project account (replace as required)
  #SBATCH --account=my-account-id
  #
  # Specify (hard) runtime (HH:MM:SS)
  #SBATCH --time=01:00:00
  #
  # Job name
  #SBATCH --job-name=gpu_test
  #
  # Output file
  #SBATCH --output=slurm-%j.out
  #======================================================

  module purge
  module load nvidia/sdk/22.3
  module load anaconda/python-3.9.7/2021.11

  #Uncomment the following if you are running multi-threaded
  #export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
  #
  #=========================================================
  # Prologue script to record job details
  # Do not change the line below
  #=========================================================
  /opt/software/scripts/job_prologue.sh 
  #----------------------------------------------------------

  #Modify the line below to run your program. This is an example

  python trainingFunctions.py

  #=========================================================
  # Epilogue script to record job endtime and runtime
  # Do not change the line below
  #=========================================================
  /opt/software/scripts/job_epilogue.sh 
  #----------------------------------------------------------