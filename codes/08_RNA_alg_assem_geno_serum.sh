#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J RNA_assem_genome_serum
#SBATCH --mail-type=ALL
#SBATCH --mail-user olivia.norlin.6840@student.uu.se

#Module load
module load bioinfo-tools
module load bwa

#Commands
for i in {69..70}
do
        bwa aln ~/genomeanalysis_project/analyses/01_genome_assembly/genome_assembly.contigs.fasta \
        ~/genomeanalysis_project/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR17979${i}_pass_1.fastq.gz \
        > ~/genomeanalysis_project/analyses/08_RNA_alg_assem_geno/serum_bwa_aln/aln_pass1_${i}.sai
     
        bwa aln ~/genomeanalysis_project/analyses/01_genome_assembly/genome_assembly.contigs.fasta \
        ~/genomeanalysis_project/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR17979${i}_pass_2.fastq.gz \
        > ~/genomeanalysis_project/analyses/08_RNA_alg_assem_geno/serum_bwa_aln/aln_pass2_${i}.sai
        
        bwa sampe ~/genomeanalysis_project/analyses/01_genome_assembly/genome_assembly.contigs.fasta \
	~/genomeanalysis_project/analyses/08_RNA_alg_assem_geno/serum_bwa_aln/aln_pass1_${i}.sai \
	~/genomeanalysis_project/analyses/08_RNA_alg_assem_geno/serum_bwa_aln/aln_pass2_${i}.sai \
	~/genomeanalysis_project/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR17979${i}_pass_1.fastq.gz \
	~/genomeanalysis_project/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR17979${i}_pass_2.fastq.gz \
	> ~/genomeanalysis_project/analyses/08_RNA_alg_assem_geno/serum_bwa_sampe/aln_ERR17979${i}.sam
done

