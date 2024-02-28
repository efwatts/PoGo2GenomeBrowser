# It is assumed that before running this script, that the PoGo program is executable locally.
# https://www.sanger.ac.uk/tool/pogo/
export PATH=$PATH:/path/to/folder

# It is also assumed that your GTF file and FASTA file, along with ensg_to_gene_name_map.txt are in a folder called "data"
  # If you need to generate the ensg_to_gene_name_map.txt file, see the script extract_ensg_to_gene_map_gencode_gtf.py
  # Update the name of your GTF and FASTA files in the script map_peptides_to_pacbio_database.py 

# First, make PoGo compatible input GTF/FASTA files
python map_peptides_to_pacbio_database.py
