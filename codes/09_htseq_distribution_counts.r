my_data <- read.delim("htseq_BH_result.txt")
#my data is a dataframe

#Plot first column on x axis and sexon on y 
genID <- c(1:3125)
#my_data[,1]
bh1 <- my_data[1:3125,2]
bh2 <- my_data[1:3125,3]
bh3 <- my_data[1:3125,4]
plot(genID,bh1, xlab="Locus tag number", ylab="Counts",
     main="Distribution of counts per gene for BH", col="green")
points(genID, bh2, col="red")
points(genID, bh3, col="blue")

s_data <- read.delim("htseq_serum_result.txt")
s71_data <- read.delim("htseq_serum_result_seq71.txt")
s1 <- s_data[1:3125,2]
s2 <- s_data[1:3125,3]
s3 <- s71_data[1:3125,2]
plot(genID,s1, xlab="Locus tag number", ylab="Counts",
     main="Distribution of counts per gene for serum", col="green")
points(genID, s2, col="red")
points(genID, s3, col="blue")
