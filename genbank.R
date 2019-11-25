setwd("C:/Users/root/Desktop/training")

gb<-readLines("sequence.gb")

ac<-grep("^ACCESSION",gb)
acn = sub("ACCESSION +","",gb[ac])
#where the accession is

or<-grep("^ORIGIN",gb)
start<-or+1
end<-grep("^//",gb)-1
seq = sub(" +[0-9]+ ","",gb[start:end])
#where the sequence is

seq2 = gsub(" ","",seq) #delete space
seq3 = paste(seq2,sep = "",collapse = "") #paste to one row
seq4 = toupper(seq3) #initial all


seqs<-strsplit(seq4,"")
sum<-nchar(seq4)
k<-1
A<-0
T<-0
C<-0
G<-0
while (k<sum||k==sum) {
  if(seqs[[1]][k]=="A")
    A<-A+1
  if(seqs[[1]][k]=="T")
    T<-T+1
  if(seqs[[1]][k]=="C")
    C<-C+1
  if(seqs[[1]][k]=="G")
    G<-G+1
  k<-k+1
}
RA<-A/sum
RT<-T/sum
RC<-C/sum
RG<-G/sum


sink("gbk.txt")
cat("ACCESSION Number:\n")
cat(acn)
cat("\n\n")
cat("The sequence is:\n")
cat(seq4)
cat("\n\n")
cat("Sequence length is:\n")
cat(nchar(seq4))
cat("\n\n")
cat("rate of A:\n")
cat(RA)
cat("\n")
cat("rate of T:\n")
cat(RT)
cat("\n")
cat("rate of C:\n")
cat(RC)
cat("\n")
cat("rate of G:\n")
cat(RG)
cat("\n")
sink()

