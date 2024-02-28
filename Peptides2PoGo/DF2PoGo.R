# Format an output file for input into Pogo to make Genome Browser tracks
# Restructure the dataframe for input into Pogo
setwd("/path/to/your/files")

# WTC11_Unfrac
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

file_path <- "./WTC11_unfrac_peptide_output_POGO.txt"
write.csv(restructured_pogo_df, "WTC11_unfrac_peptide_output_POGO.csv", quote= FALSE)



# WTC11_8frac 
frac8_peptide_summary_df <- read_csv("240227_R_WTC11_8frac_SKYLINE_DDA_TMT_OUTPUT_fixed.csv")

restructured_pogo_df <- frac8_peptide_summary_df %>%
  mutate( #mutate just allows us to modify and add columns!
    Experiment = "dda_8frac", #create column called "Experiment" that is filled with the experiment type
    PSMs = 1, #create column called "PSMs" and fill with 1
    Quant = 1 #create column called "Quant" and fill with 1
  ) %>%
  select(Experiment, Distinct_Peptide = Sequence, PSMs, Quant) #the dataframe we're creating will only have these columns

file_path <- "./WTC11_8frac_peptide_output_POGO.txt"
write.csv(restructured_pogo_df, "WTC11_8frac_peptide_output_POGO.csv", quote= FALSE)

