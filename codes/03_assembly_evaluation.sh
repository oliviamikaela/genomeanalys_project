#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J assembly_evaluation 
#SBATCH --mail-type=ALL
#SBATCH --mail-user olivia.norlin.6840@student.uu.se

#load module
module load bioinfo-tools
module load quast 

#Command 
quast.py -R ~/genomeanalysis_project/raw_data/ref_genome/GCF_010120755.1_ASM1012075v1_genomic.fna -G ~/genomeanalysis_project/raw_data/ref_genome/GCF_010120755.1_ASM1012075v1_genomic.gff ~/genomeanalysis_project/analyses/01_genome_assembly/genome_assembly.contigs.fasta


 
