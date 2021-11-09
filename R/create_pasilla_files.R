library(pasilla)
library(tidyverse)

counts_file <- system.file("extdata",
                           "pasilla_gene_counts.tsv",
                           package = "pasilla",
                           mustWork = TRUE)
metadata_file <- system.file("extdata",
                             "pasilla_sample_annotation.csv",
                             package = "pasilla",
                             mustWork = TRUE)

metadata <- read_csv(metadata_file)
metadata <- select(metadata, file, condition, type)
metadata <- mutate(metadata,
                   condition = factor(condition),
                   type = factor(type),
                   file = str_remove(file, "fb"))

# Rearrange matrix columns in counts so they match the metadata
counts <- read_tsv(counts_file) %>%
  select(gene_id, rownames(metadata)) %>% 
  mutate(gene_id = str_replace(gene_id, "FBgn", ""))
write_csv(counts,   here::here("data", "pasilla_gene_counts.csv"))
write_csv(metadata, here::here("data", "pasilla_metadata.csv"))
