filterPhy = function(physeq, x, type="taxa", keep="TRUE"){
  require(phyloseq)
  if (type == "taxa"){
    all_otu = taxa_names(physeq)
    if (keep == "TRUE"){
      my_otu <- all_otu[(all_otu %in% x)]
    } else {
      my_otu <- all_otu[!(all_otu %in% x)]
    }
    new_physeq <-
      prune_taxa(my_otu, physeq)
    return(prune_samples(
      sample_sums(new_physeq) > 0,
      new_physeq))
  } else {
    all_samples = sample_names(physeq)
    if (keep == "TRUE"){
      my_samples <- all_samples[(all_samples %in% x)]
    } else {
      my_samples <- all_samples[!(all_samples %in% x)]
    }
    new_physeq <-
      prune_samples(my_samples, physeq)
    return(prune_taxa(
      taxa_sums(new_physeq) > 0,
      new_physeq))
  }
}








