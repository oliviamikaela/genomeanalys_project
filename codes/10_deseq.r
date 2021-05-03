datadir<-"~/genomeanalysis_project/analyses/09_htseq"

sampleFile <- c("bh_1.txt", "bh_2.txt", "bh_3.txt", "se_1.txt", "se_2.txt", "se_3.txt")
sampleName <- c("bh_1", "bh_2", "bh_3", "se_1", "se_2", "se_3")
condition <- c("bh", "bh", "bh", "se", "se", "se")

seqData <- data.frame(sampleName, sampleFile, condition)

library("DESeq2")                     
#Run Deseq
dds<-DESeqDataSetFromHTSeqCount(sampleTable=seqData,directory=datadir,design=~ condition)

ddsDE<-DESeq(dds)
myres<-results(ddsDE)

write.csv(as.data.frame(myres), file="~/genomeanalysis_project/analyses/10_deseq/myres_raw_result.csv")

res_p0.05_FC1 <- subset(myres,pvalue<0.05&abs(log2FoldChange)>1)
res_p0.05_FC1[order(res_p0.05_FC1[["log2FoldChange"]]),]

write.csv(as.data.frame(res_p0.05_FC1), file="~/genomeanalysis_project/analyses/10_deseq/res_p0.05_FC1.csv")

png(file='~/genomeanalysis_project/analyses/10_deseq/plot_res_p0.05_FC1.png')
plot(myres$log2FoldChange,-log10(myres$pvalue),pch=19,cex=0.3,xlab="Log2 FC",ylab="-log10(P-value)",col=ifelse(myres$pvalue<0.05&abs(myres$log2FoldChange)>1,"red","black"))
dev.off()
