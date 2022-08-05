#clear environment
rm(list = ls())

install.packages('vcd') #package for sieve

# #read matrix donwloaded from Orange Textable (it is already the m + t(m))

#raw frequencies of co-occurrence for types of modality
m_markers_raw <- read.csv("/home/sitel/Téléchargements/cooccurrences/co-occurrences/markers/markers_modal_raw.csv", header = TRUE, row.names = 1, sep = "\t")
m_markers_raw_final <- 0.5*m_markers_raw

write.csv(m_markers_raw_final,"/home/sitel/Téléchargements/cooccurrences/co-occurrences/markers/markers_raw_final.csv")

# library(vcd)
# library(vcdExtra)
# 
# #read the dataframe as matrix
# new_m_modalities_raw <- as.matrix(m_modalities_raw_final)
# 
# 
# #produce sieve
# #deleted option "label = TRUE" to show Pearson residuals
# sieve(new_m_modalities_raw, main = "Title", shade = TRUE, gp = NULL, gp_tile = gpar(), labeling = labeling_values, rot_labels = c(top = 0, left = 0), offset_labels = c(0.5, 0, 0, 1.5), scale = 1)
# 
# 
# # #normalised frequencies of co-occurrence for types of modality: do not produce sieve, the frequencies are already normalised
# # m_modalities_norm <- read.csv("/home/sitel/Téléchargements/cooccurrences/co-occurrences/modalities/modalities_normalised.csv", header = TRUE, row.names = 1, sep = "\t")
# 
# #read the dataframe as matrix
# new_m_modalities_norm <- as.matrix(m_modalities_norm)
# 
# #rename columns (they don't fit in the diagram)
# rownames(new_m_modalities_norm) <- c("Deo Acc", "Deo Auth", "Dyn Pos", "Dyn Nec", "Epi")
# colnames(new_m_modalities_norm) <- c("Deo Acc", "Deo Auth", "Dyn Pos", "Dyn Nec", "Epi")
# 
# #produce sieve
# sieve(new_m_modalities_norm, main = "Types of modality in co-occurrence (normalised frequencies)", shade = TRUE, gp = NULL, gp_tile = gpar(), legend = TRUE, labeling = labeling_values, rot_labels = c(top = 0, left = 0), offset_labels = c(0.8, 0, 0, 0.8), scale = 5)
