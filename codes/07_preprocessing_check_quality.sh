#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J preprocessing_quality_check
#SBATCH --mail-type=ALL
#SBATCH --mail-user olivia.norlin.6840@student.uu.se

#module load
module load bioinfo-tools
module load FastQC/0.11.9

#Commands
fastqc -o ~/genomeanalysis_project/analyses/07_preprocessing_check_quality -f fastq \
~/genomeanalysis_project/analyses/06_preprocessing_RNA/output_forward_paired.fq.gz \
~/genomeanalysis_project/analyses/06_preprocessing_RNA/output_reverse_paired.fq.gz 


