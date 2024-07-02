## Preliminary set of scripts to take `corrected_with_cds.gtf` and `orf_refined.fasta` files through PoGo to the UCSC Genome Browser
### After running the [Long Read Proteogenomics Pipeline](https://github.com/sheynkman-lab/Long-Read-Proteogenomics), you may want to view your proteoforms on the [UCSC Genome Browser](https://genome.ucsc.edu/)

You will want to create a conda environment I called PoGo to run these scripts. You can do this by downloading the `PoGo.yml` file in this repository and running the following:
```
conda env create -f environment.yml
```

To do this visit the folders in thies repository in the following order: <br />
1. If you have your own squence data, do this step first. If you're using GENCODE/ENSAMBL data, skip this step: [GTF_FASTA_2PoGo](https://github.com/efwatts/PoGo2GenomeBrowser/tree/main/GTF_FASTA_2PoGo)
1. Put your peptide list in PoGo format: [Peptides2Pogo](https://github.com/efwatts/PoGo2GenomeBrowser/tree/main/Peptides2PoGo)
2. Run PoGo: [PoGo](https://github.com/efwatts/PoGo2GenomeBrowser/tree/main/RunPoGo)
3. Create a track hub: [TrackHub](https://github.com/efwatts/PoGo2GenomeBrowser/tree/main/TrackHub)
3. Make a multiregion bed file for Genome Browser if using your own sequence data. Otherwise, skip this step: [Multiregion_bed](https://github.com/efwatts/PoGo2GenomeBrowser/tree/main/Multiregion_bed)
4. (Optional) If you have a GTF file that you want to add to the UCSC Genome Browser without separating it into peptide groups, you can either upload it directly, or you can convert it to a color-coded .bed file via [GTF2BED](https://github.com/efwatts/PoGo2GenomeBrowser/tree/main/GTF2BED)
