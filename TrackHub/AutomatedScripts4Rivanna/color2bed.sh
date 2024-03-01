#!/bin/bash
#SBATCH --job-name="color2bed_automation_test"
#SBATCH -A sheynkman_lab
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=10
#SBATCH --time=12:00:00
#SBATCH -p standard #the queue/partition to run on
#SBATCH --output=%x-%j.log
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=email@virginia.edu

module purge 
module load gcc/11.4.0
module load openmpi/4.1.4
module load python/3.11.4

cd /project/sheynkman/users/emily/AltProtDet_PoGo2GenomeBrowser

python ./scripts/color2bed_automate.py \
    --bed_file_path ./results/TMT_WTC11_unfrac_peptide_POGO.bed \
    --csv_file_path ./data/as192_annotations_table_1.csv \
    --output_bed12_path ./results/TMT_WTC11_unfrac_RGB.bed12 \
    --track_name WTC11_TMT_unfrac
