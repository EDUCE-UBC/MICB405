library(pasilla)
library(tidyverse)

counts_file   <- system.file("extdata",
                             "pasilla_gene_counts.tsv",
                             package = "pasilla",
                             mustWork = TRUE)
metadata_file <- system.file("extdata",
                             "pasilla_sample_annotation.csv",
                             package = "pasilla",
                             mustWork = TRUE)

metadata <-
  read_csv(metadata_file) %>% 
  select(file, condition, type) %>% 
  mutate(file = str_remove(file, "fb"))

counts <-
  read_tsv(counts_file) %>%
  # Rearrange columns in `counts` so they match `metadata`
  select(gene_id, metadata$file) %>% 
  mutate(gene_id = str_replace(gene_id, "FBgn", ""))

# Save data frames
write_csv(counts,   here::here("data", "pasilla_gene_counts.csv"))
write_csv(metadata, here::here("data", "pasilla_metadata.csv"))
