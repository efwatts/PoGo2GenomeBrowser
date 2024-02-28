# Run PoGo with modified files
Pogo can be found here with instructions on how to install: https://www.sanger.ac.uk/tool/pogo/ <br />

There are a variety of options for running PoGo <br />
PoGo -fasta TRANSL -gtf ANNO -in *.pogo[,*.pogo] [-format OUTF] [-merge TRUE/FALSE] [-source SRC] [-mm NUM] [-mmmode TRUE/FALSE] [-species SPECIES] <br />

### Required Arguments:
-fasta TRANSL - Filepath for file containing protein sequences in FASTA format <br />
-gtf ANNO - Gene annotation with coding sequences (CDS) in GTF format <br />
-in *.pogo[,*.pogo] - Path to single input file or comma separated list of paths to input files containing peptides to be mapped with associated number of peptide to spectrum matches, sample name and quantitative value <br />

### Optional Arguments:
-format OUTF - Set output format GTF, GCT, BED, PTMBED, or ALL. Comma separated combindation possible. Default = ALL <br />
-merge TRUE/FALSE - Merge output of multiple input files or not (merged output will be named after last input file *_merged). Default = FALSE <br />
-mm NUM - Number of mismatches allowed in mapping (0, 1, or 2). Default = 0 <br />
-mmmode TRUE/FALSE - Set TRUE to restrict number of mismatch in kmer to 1. Default = FALSE <br />
- species SPECIES - Set species using common or scientific name or taxonomy ID. Default is Human
 
