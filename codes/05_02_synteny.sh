#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J synteny_search
#SBATCH --mail-type=ALL
#SBATCH --mail-user olivia.norlin.6840@student.uu.se

# Load modules
module load bioinfo-tools
module load blast

# Commands
blastn -outfmt 6 -subject ~/genomeanalysis_project/raw_data/related_genome/GCF_000393015.1_Ente_faec_T5_V1_genomic.fna \
-query ~/genomeanalysis_project/analyses/01_genome_assembly/genome_assembly.contigs.fasta \
-out synteny_result2
