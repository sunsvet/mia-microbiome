MIA and the gut microbiome study

**The study**

- Assessing the effect of Maternal Immune Activation (MIA) and maternal stress (MatS) on the gut microbiome of children
- cohort from the Australian Autism Biobank (AAB)

**Study design**

- total N = 199, after removal of children with genetic conditions, missing dietary data and missing maternal stress data, N=174
- MIA and MatS
- MIA  status was determined from:
  - "other details for stressful events during pregnancy"
  - "chronic illnesses" 
  - "complications during pregnancy"
  - illnesses that arose after the pregnancy or were not present at pregnancy (based on "maternal DOB", "chronic illness age" and "other detail") were excluded 
  - Thus, MIA groups were:
    - MIA: child born to a mother with MIA
    - no_MIA: child born to a mother without MIA 
- Maternal Stress (MS)
  - MS status was determined from a checklist assessing stressful events during the pregnancy.   - MS > 0 indicated the presence of maternal stress (MatS). 
- Maternal event (ME)
  - MIA + MatS

**Input dataset**

- Taxonomy data tables from Microba (using MCPv2, which includes n=1751 species)
- Rarefaction to 7M reads (apparently due to operational/computational reasons), minimum number of reads = 4.8M

**Pre-processing of data**

- Transposed count data
- Performed centred-log-ratio (clr) transformation
- Removed taxa with <10 non-zero values (referred below here as "remove 0s") for some analyses 
    - Analyses with removal:
        - weighted (quantative) Unifrac/Bray-Curtis index + PERMANOVA + PERMDISP2
        - sPLS-DA (+ also apply offset = 1) [sparse partial least squares discriminant analysis]
        - Linear models: ANOVA/mixed linear model /partially-overlapping t-tests on clr-transformed data
        - ANCOM-BC (Analysis of Composition of Microbiomes with Bias Correction)
        - OREML (not performed here)
    - Analysis without removal: 
        - species richness (the number of species present), species abundance (the number of individuals per species), 
        - Shannon diversity index (information statistics index, the sum of n/N x ln n/N)
        - Fisher's test for presence/absence (of species)
- Did not apply an offset to the zero values, except for the sPLS-DA analysis, where it was required

**Covariate choice**

- used age + sex + first 3 dietary PCs (from clr-transformed %energy data)
- first 3 dietary PCs capture 41% of dietary variance (as measured by %energy intake), and may be interpreted as follows:
    - PC1: high plant-based, low junk foods
    - PC2: high dairy, low grains and takeaway
    - PC3: high meat, low grains and dairy
- used %energy intake as the "source" data as it best accounts for total energy intake, which - in turn - is confounded by age. As a proportional dataset, it requires clr transformation
