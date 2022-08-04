#clear environment
rm(list = ls())
install.packages('vcd')
# #read matrix donwloaded from Orange Textable (it is already the m + t(m))
# matrix_final <- read.csv("/home/sitel/Téléchargements/cooccurrences/matrix_orange.csv", header = TRUE, row.names = 1, sep = "\t")
# matrix_final_half <- 0.5*matrix_final
# 
# 
# library(vcd)
# library(vcdExtra)
# #expected <- independence_table(matrix_final_half)
# 
# class(matrix_final_half)
# new_final_matrix <- as.matrix(matrix_final_half)
# 
# sieve(new_final_matrix, shade = TRUE, labeling = labeling_values)

m_modalities_raw <- read.csv("/home/sitel/Téléchargements/cooccurrences/co-occurrences/modalities/modalities_raw.csv", header = TRUE, row.names = 1, sep = "\t")
library(vcd)
library(vcdExtra)

new_m_modalities_raw <- as.matrix(m_modalities_raw)

rownames(new_m_modalities_raw) <- c("Deo Acc", "Deo Auth", "Dyn Pos", "Dyn Nec", "Epi")
colnames(new_m_modalities_raw) <- c("Deo Acc", "Deo Auth", "Dyn Pos", "Dyn Nec", "Epi")

sieve(new_m_modalities_raw, shade = TRUE, labeling = labeling_values, rot_labels = c(top = 90, left = 0), offset_labels = c(0.8, 0, 0, 0.6), scale = 5)
