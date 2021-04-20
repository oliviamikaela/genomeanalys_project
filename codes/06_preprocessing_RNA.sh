#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 02:00:00
#SBATCH -J preprocessing_trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user olivia.norlin.6840@student.uu.se

#Load modules 
module load bioinfo-tools
module load trimmomatic

#commands 
java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE \
~/genomeanalysis_project/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_1.fastq.gz \
~/genomeanalysis_project/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_2.fastq.gz \
output_forward_paired.fq.gz output_forward_unpaired.fq.gz output_reverse_paired.fq.gz output_reverse_unpaired.fq.gz \ 
ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/rackham/TruSeq3-PE.fa:2:36:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36

