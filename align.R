
X = 'TTCATA'
Y = 'TGCTCGTA'

seq.x <- unlist(strsplit(X, ''))
seq.y <- unlist(strsplit(Y, ''))

tab <- matrix(NA, length(seq.x), length(seq.y))
tab[,1] <- sapply(0:length(seq.x), function(x) x * -6)
tab[1,] <- sapply(0:length(seq.y), function(y) y * -6)

for (i in 2:length(seq.x))
{
  for (j in 2:length(seq.y))
  {
    
  }
}