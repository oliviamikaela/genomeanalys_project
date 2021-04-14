#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J struc_func_anno
#SBATCH --mail-type=ALL
#SBATCH --mail-user olivia.norlin.6840@student.uu.se

#Load modules 
module load bioinfo-tools
module load prokka

#commands 
prokka --prefix struc_func_anno ~/genomeanalysis_project/analyses/01_genome_assembly/genome_assembly.contigs.fasta
