setwd("C:/Users/root/Desktop/training")

download_genbank <- function(accession) {
  for (acc in accession) {
    URL <- paste("https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&id=", 
                 paste(acc, collapse = ","), "&rettype=gb&retmode=text", 
                 sep = "")
    utils::download.file(url = URL, destfile = paste0(acc, ".gb"), quiet = TRUE)
  }
}

acc=paste("AJ5345",26:49,sep = "")
download_genbank(acc)
list.files()
