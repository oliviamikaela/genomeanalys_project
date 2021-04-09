#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J genome_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user olivia.norlin.6840@student.uu.se

# Load modules
module load bioinfo-tools
module load canu

# Perform genome assembly with canu
canu -p genome_assembly -d  ~/genomeanalysis_project/analyses/01_genome_assembly/ \
genomeSize=3m \
-pacbio ~/genomeanalysis_project/raw_data/genomics_data/PacBio/*


