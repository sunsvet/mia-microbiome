# Loading packages for running MIA microbiome analyses

library(rmarkdown)    # install.packages("rmarkdown") 
library(epuRate)      # devtools::install_github("holtzy/epuRate", force=TRUE)
library(data.table)
library(DT)
library(tidyverse)
library(plyr)
library(reshape2)
library(ggplot2)
library(RColorBrewer)
library(colorspace)
library(ggiraphExtra)
library(ggstatsplot)
library(cowplot)
library(lme4)
library(car)
library(gt)
library(ggridges)
#library(scalesextra)
library(ggpubr)
library(GGally)
library(knitr)

# options(stringsAsFactors = FALSE)

# Microbiome analysis packages
#remotes::install_github("microbiome/microbiome")
#BiocManager::install("microbiome")
library(phyloseq)
library(microbiome)
library(vegan)

# Partially overlapping data (accounting for FID)
library(Partiallyoverlapping)

# ANCOM-BC
#install.packages("exactRankTests")
#install.packages("compositions")
library(ANCOMBC)
library(exactRankTests)
library(compositions)
library(nlme)
library(dplyr)
library(writexl)

# mixMC
# BiocManager::install('mixOmics')
library(mixOmics)

# Visualisation
library(data.tree)
library(treemap)
library(networkD3)
library(plotly) # creates interactive graphics
library(RNOmni) # for rank inverse transform - INT

#library(Maaslin2)

#Colour Palettes
#library(patchwork)   # to combine several plots in one output
library(viridis)
library(RColorBrewer)

#Tables and descriptive statistics
library(arsenal)

# Dates
library(lubridate)

# Logistic regression
library(aod)