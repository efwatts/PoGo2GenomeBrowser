#!/bin/bash

#SBATCH --job-name="run_viz_track_multiregion_bed"
#SBATCH --ntasks-per-node=32
#SBATCH --cpus-per-task=1 #number of cores to use
#SBATCH --time=1-12:00:00 #amount of time for the whole job
#SBATCH --mem=500GB
#SBATCH --partition=standard #the queue/partition to run on
#SBATCH --account=sheynkman_lab
#SBATCH --output=%x-%j.log
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=youremail@virginia.edu
#%Module
module purge

# Activate anaconda environment
module --ignore-cache load "python/miniconda"
source activate lrp

NAME=WTC

SAMPLE_GTF=./data/wtc11_with_cds.gtf 
REFERENCE_GTF=./data/gencode.v38.annotation.gtf

python3 ./scripts/make_region_bed_for_ucsc.py --name $NAME --sample_gtf $SAMPLE_GTF --reference_gtf $REFERENCE_GTF

