#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 08:00:00
#SBATCH -J htseq_serum
#SBATCH --mail-type=ALL
#SBATCH --mail-user olivia.norlin.6840@student.uu.se

#Module load
module load bioinfo-tools
module load htseq
module load samtools

#commands 
samtools index ~/genomeanalysis_project/analyses/08_RNA_alg_assem_geno/serum_bwa_sampe/aln_ERR1797971.bam aln_ERR1797971.bam.bai


htseq-count -f bam -r pos -i ID -t CDS \
~/genomeanalysis_project/analyses/08_RNA_alg_assem_geno/serum_bwa_sampe/aln_ERR1797971.bam \
~/genomeanalysis_project/analyses/04_struc_func_anno/struc_func_anno/trimmed_struc_func_anno.gff \
> ~/genomeanalysis_project/analyses/09_htseq/htseq_serum_result_seq71.txt
