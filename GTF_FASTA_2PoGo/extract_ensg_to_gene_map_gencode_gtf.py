#%%

# To run this code, you will need to download the GTF file from Ensembl.

# Download and gunzip gencode gtf:

# https://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_44/gencode.v44.annotation.gtf.gz

# This script may be found in the following GitHub repository:
# See https://github.com/sheynkman-lab/Gloria-Sheynkman/blob/main/extract_ensg_to_gene_map_gencode_gtf.py


# Specify the path to the Ensembl GTF file
gtf_file_path = "./gencode.v44.annotation.gtf"


# Initialize a dictionary to store the mapping of ENSG to gene names
ensg_to_genename = {}

# Open and read the GTF file
with open(gtf_file_path, "r") as gtf_file:
    for line in gtf_file:
        # Skip header lines (lines that start with "#")
        if line.startswith("#"):
            continue
        
        # Split the GTF line into fields
        fields = line.strip().split("\t")
        
        # Check if this line represents a gene (feature type is "gene")
        if fields[2] == "gene":
            # Extract the gene ID (ENSG) and gene name from the attributes field
            attributes = fields[8].split(";")
            for attr in attributes:
                attr = attr.strip()
                if attr.startswith("gene_id"):
                    ensg = attr.split('"')[1]
                elif attr.startswith("gene_name"):
                    gene_name = attr.split('"')[1]
            
            # Store the mapping in the dictionary
            ensg_to_genename[ensg] = gene_name

# write out the ensg to gene name map
with open('ensg_to_gene_name_map.txt', 'w') as ofile:
    for ensg, gene_name in ensg_to_genename.items():
        ofile.write(f"{ensg}\t{gene_name}\n")
