import csv #note: this is included in base python, so you don't need a special conda env

# Define the input BED file and CSV file
bed_file_path = "./results/TMT_WTC11_8frac_POGO.bed" #change this to your bed file
csv_file_path = "./data/as192_annotations_table_1.csv" #change this to a CSV that has a lits of peptide sequences in a column named "Peptide" and a column of TRUE/FALSE variables named "is_major_gene_isoform"

# Define the output BED12 file
output_bed12_path = "./results/color-coded-BED/TMT_WTC11_8frac_RGB.bed12" #change this to the path where you want your output file to go

# Define the RGB colors for major and minor isoforms
#you can change these colors to whatever you want!
major_color = "0,153,136"
minor_color = "238,119,51"

# Define the track name
track_name = "WTC11_TMT_8frac" #change this to your track name...it will show up in your .bed12 file

# Create a dictionary to store the isoform information from the CSV file
isoform_dict = {}

# Read the CSV file and populate the isoform dictionary
with open(csv_file_path, 'r', encoding='utf-8-sig') as csv_file:  # Use 'utf-8-sig' to handle BOM...this is an issue with something in this CSV file
    csv_reader = csv.DictReader(csv_file)
    
    
    for row in csv_reader:
        # Check if the 'Peptide' column is present
        if 'Peptide' not in row:
            raise ValueError("Column 'Peptide' not found in the CSV file.")
        
        isoform_dict[row['Peptide'].strip()] = row['is_major_gene_isoform']

# Update the BED file and convert it to BED12 format
with open(bed_file_path, 'r') as bed_file, open(output_bed12_path, 'w') as output_bed12_file:
    # Write the track line at the top of the file
    output_bed12_file.write(f"track name={track_name} itemRgb=On\n")
    
    for line in bed_file:
        # Split the BED line into columns
        columns = line.strip().split('\t')
        
        # Get the name (Peptide) from the BED file
        name = columns[3]
        
        # Check if the name exists in the isoform dictionary
        if name in isoform_dict:
            # Get the is_major_gene_isoform value
            is_major = isoform_dict[name]
            
            # Set the RGB color based on the isoform type
            rgb_color = major_color if is_major == "TRUE" else minor_color
            
            # Update the RGB color column in the BED line
            columns[8] = rgb_color
        
        # Convert the BED line to BED12 format
        bed12_columns = columns[:6] + [columns[6], columns[7], columns[8]] + columns[9:]
        
        # Write the updated BED12 line to the output file
        output_bed12_file.write('\t'.join(bed12_columns) + ',\n')

print("RGB colors added, BED file converted to BED12 format, and track line added.")
