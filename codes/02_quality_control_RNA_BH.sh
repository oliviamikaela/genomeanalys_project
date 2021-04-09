#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 02:00:00
#SBATCH -J quality_check_RNA_BH
#SBATCH --mail-type=ALL
#SBATCH --mail-user olivia.norlin.6840@student.uu.se

#Commands 
fastqc -o ~/genomeanalysis_project/analyses/02_check_quality_RNA -f fastq \   
~/genomeanalysis_project/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_1.fastq.gz \
~/genomeanalysis_project/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_2.fastq.gz \

fastqc -o ~/genomeanalysis_project/analyses/02_check_quality_RNA -f fastq \
~/genomeanalysis_project/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_1.fastq.gz \
~/genomeanalysis_project/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_2.fastq.gz \

fastqc -o ~/genomeanalysis_project/analyses/02_check_quality_RNA -f fastq \
~/genomeanalysis_project/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_1.fastq.gz \
~/genomeanalysis_project/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_2.fastq.gz

