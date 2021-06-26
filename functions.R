library(dplyr)

#generates Gene interaction network from raw counts

calculate_gin <- function(counts) {
  
}

#plots given gene(s) over time (counts vs. time) (control if desired)

plot_genes <- function(counts, genes, control=F) {
  
}

#calculates correlations of two genes

corr <- function(gene1, gene2) {
  return(cor(gene1, gene2))
}

#returns list of most changed genes during the time frame

most_changed_over_time <- function(counts) {
  
}

most_different_between <- function(counts1, counts2) {
  genes <- counts1$gene
  counts1 <- select(counts1, -GeneID)
  counts2 <- select(counts2, -GeneID)
  
}

#given graph, calculate clustering coefficient

clustering_coefficient <- function(gin, gene) {
  
}

#add one to the UMI and take the log
log_transform <- function(counts) {
  counts[ , unlist(lapply(counts, is.numeric)) ] <-  log(counts[ , unlist(lapply(counts, is.numeric)) ]+1)
  return(counts)
}
