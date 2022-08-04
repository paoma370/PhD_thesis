#clear environment
rm(list = ls())
install.packages('vcd')
# #read matrix donwloaded from Orange Textable (it is already the m + t(m))

m_modalities_raw <- read.csv("/home/sitel/Téléchargements/cooccurrences/co-occurrences/modalities/modalities_raw.csv", header = TRUE, row.names = 1, sep = "\t")
m_modalities_raw_final <- 0.5*m_modalities_raw

library(vcd)
library(vcdExtra)

new_m_modalities_raw <- as.matrix(m_modalities_raw_final)

rownames(new_m_modalities_raw) <- c("Deo Acc", "Deo Auth", "Dyn Nec", "Dyn Pos", "Epi")
colnames(new_m_modalities_raw) <- c("Deo Acc", "Deo Auth", "Dyn Nec", "Dyn Pos", "Epi")

sieve(new_m_modalities_raw, main = "Types of modality in co-occurrence", shade = TRUE, labeling = labeling_values, rot_labels = c(top = 40, left = 0), offset_labels = c(0.5, 0, 0, 1), scale = 1)
