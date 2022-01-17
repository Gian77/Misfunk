getAbund <- function(physeq, rank){
  tax_table(physeq)[tax_table(physeq)==""]<- NA
  tax_table(physeq)[tax_table(physeq)=="unidentified"]<- NA
  tax_table(physeq)[is.na(tax_table(physeq))] <-"Unclassified"
  tax_table(physeq) <-
      tax_table(physeq)[, (colnames(tax_table(physeq)) %in%
      c("Kingdom","Phylum","Class","Order","Family","Genus","Species"))]
  #tax_table(physeq) <-
  #    tax_table(physeq)[, !(colnames(tax_table(physeq)) %in% c("OTU_ID"))]
  physeq_phylum <-
      tax_glom(physeq, rank)
  otu_physeq <-
      taxa_sums(physeq_phylum)/sum(taxa_sums(physeq_phylum))*100
  tax_physeq <-
      as(tax_table(physeq_phylum), "matrix")
  tax_physeq <-
      as.data.frame(tax_physeq)
  #tax_physeq <- tax_physeq[c(2)]
  tax_physeq$abundance <-
      as.vector(otu_physeq)
  tax_physeq <-
      tax_physeq[order(tax_physeq$abundance, decreasing = TRUE),]
  # formatting
  rownames(tax_physeq) <-
    seq(1:nrow(tax_physeq))
  if (rank == "Phylum"){
    tax_physeq <- tax_physeq[, c(1:2,8)]
  }
  return(tax_physeq)
}

