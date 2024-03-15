# Convert data frame with peptide information to PoGo-friendly format
This module will take a data frame with the peptide-specific sequences in one column and change it to a data frame ready for input to PoGo as `-in pogo` <br />
If you have `.csv` files that contain information about peptides. They need to be converted to `.txt` files that are compatible with PoGo via the R script `ProteinDF2PoGo.R` <br />

**Note: this script will require the most modification, because you need to change the scripts to reflect where your files are, the names in the dataframes, and the names of your experiments**
