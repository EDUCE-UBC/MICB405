if (!require(tidyverse))    install.packages("tidyverse")
if (!require(pheatmap))     install.packages("pheatmap")
if (!require(RColorBrewer)) install.packages("RColorBrewer")
if (!require(BiocManager))  install.packages("BiocManager")
if (!require(DESeq2))       BiocManager::install("DESeq2")
if (!require(plyranges))    BiocManager::install("plyranges")
