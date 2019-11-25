setwd("C:/Users/root/Desktop/training")

fas1<-readLines("flu_seq.fas")

id<-grep('^>',fas1)
idn = sub(">","",fas1[id])
seq<-fas1[i+1]

n=length(seq)

result<-data.frame(number=1)
j<-1
while (j<n||j==n) {
  result$ID[j]<id[j]
  result$SEQ[j]<-seq[j]
  seq2<-strsplit(seq[j],"")
  sum<-nchar(seq[j])
  k<-1
  A<-0
  T<-0
  C<-0
  G<-0
  while (k<sum||k==sum) {
    if(seq2[[1]][k]=="A")
      A<-A+1
    if(seq2[[1]][k]=="T")
      T<-T+1
    if(seq2[[1]][k]=="C")
      C<-C+1
    if(seq2[[1]][k]=="G")
      G<-G+1
    k<-k+1
  }
  result$RA[j]<-A/sum
  result$RT[j]<-T/sum
  result$RC[j]<-C/sum
  result$RG[j]<-G/sum
  j<-j+1
  if(j<n||j==n)
  {result<-rbind(result,c(j,""))}
}

View(result)
