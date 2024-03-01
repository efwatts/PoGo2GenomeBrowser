# Format an output file for input into Pogo to make Genome Browser tracks
# Restructure the dataframe for input into Pogo
# Outputs are named first by TMT or TOM, their ID number, WTC11, then unfrac or 8frac
setwd("~/Library/CloudStorage/OneDrive-UniversityofVirginia/Grad_student_projects/Jennifer_GenomeVis")

# WTC11_Unfrac - 240220
library(readr)
unfrac_peptide_summary_df <- read_csv("240220_R_WTC11_Unfrac_SKYLINE_DDA_TMT_OUTPUT_fixed.csv")

library(dplyr)
library(stringr)

restructured_pogo_df <- unfrac_peptide_summary_df %>%
  mutate( #mutate just allows us to modify and add columns!
    Experiment = "dda_unfrac", #create column called "Experiment" that is filled with the experiment type
    PSMs = 1, #create column called "PSMs" and fill with 1
    Quant = 1 #create column called "Quant" and fill with 1
  ) %>%
  select(Experiment, Distinct_Peptide = Sequence, PSMs, Quant) #the dataframe we're creating will only have these columns

file_path <- "./AltProtDet_PoGo2GenomeBrowser/results/TMT_WTC11_unfrac_peptide_POGO.txt"
write.table(restructured_pogo_df, file = file_path, sep = "\t", quote = FALSE, row.names = FALSE)
#PoGo prefers tables to CSVs
#write.csv(restructured_pogo_df, "TMT_240220_WTC11_unfrac_peptide_output_POGO.csv", quote= FALSE)



# WTC11_8frac - 240227
frac8_peptide_summary_df <- read_csv("240227_R_WTC11_8frac_SKYLINE_DDA_TMT_OUTPUT_fixed.csv")

restructured_pogo_df <- frac8_peptide_summary_df %>%
  mutate( #mutate just allows us to modify and add columns!
    Experiment = "dda_8frac", #create column called "Experiment" that is filled with the experiment type
    PSMs = 1, #create column called "PSMs" and fill with 1
    Quant = 1 #create column called "Quant" and fill with 1
  ) %>%
  select(Experiment, Distinct_Peptide = Sequence, PSMs, Quant) #the dataframe we're creating will only have these columns

file_path <- "./AltProtDet_PoGo2GenomeBrowser/results/TMT_WTC11_8frac_peptide_POGO.txt"
write.table(restructured_pogo_df, file = file_path, sep = "\t", quote = FALSE, row.names = FALSE)
#PoGo prefers tables to CSVs
#write.csv(restructured_pogo_df, "TMT_240227_WTC11_8frac_peptide_output_POGO.csv", quote= FALSE)

# WTC11_Unfrac - 240229
unfrac_peptide_summary_df <- read_csv("240229_R_WTC11_Unfrac_SKYLINE_TOM_OUTPUT_fixed.csv")

restructured_pogo_df <- unfrac_peptide_summary_df %>%
  mutate( #mutate just allows us to modify and add columns!
    Experiment = "dda_unfrac", #create column called "Experiment" that is filled with the experiment type
    PSMs = 1, #create column called "PSMs" and fill with 1
    Quant = 1 #create column called "Quant" and fill with 1
  ) %>%
  select(Experiment, Distinct_Peptide = Peptide, PSMs, Quant) #the dataframe we're creating will only have these columns

file_path <- "./AltProtDet_PoGo2GenomeBrowser/results/TOM_WTC11_unfrac_peptide_POGO.txt"
write.table(restructured_pogo_df, file = file_path, sep = "\t", quote = FALSE, row.names = FALSE)
#PoGo prefers tables to CSVs
#write.csv(restructured_pogo_df, "TOM_240229_WTC11_unfrac_peptide_output_POGO.csv", quote= FALSE)



# WTC11_8frac - 240228
frac8_peptide_summary_df <- read_csv("240228_R_WTC11_8frac_SKYLINE_TOM_OUTPUT_fixed.csv")

restructured_pogo_df <- frac8_peptide_summary_df %>%
  mutate( #mutate just allows us to modify and add columns!
    Experiment = "dda_8frac", #create column called "Experiment" that is filled with the experiment type
    PSMs = 1, #create column called "PSMs" and fill with 1
    Quant = 1 #create column called "Quant" and fill with 1
  ) %>%
  select(Experiment, Distinct_Peptide = Peptide, PSMs, Quant) #the dataframe we're creating will only have these columns

file_path <- "./AltProtDet_PoGo2GenomeBrowser/results/TOM_WTC11_8rac_peptide_POGO.txt"
write.table(restructured_pogo_df, file = file_path, sep = "\t", quote = FALSE, row.names = FALSE)
#PoGo prefers tables to CSVs
#write.csv(restructured_pogo_df, "TOM_240228_WTC11_8frac_peptide_output_POGO.csv", quote= FALSE)
















