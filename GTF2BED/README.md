#### This module takes your isoform track GTF file and makes it a color-coded BED12 file to add to the UCSC Genome Browser
Do this in the following order (or use `gtf2bed.sh` as a model): <br />
1. Download the `gtfToGenePred` and `genePredToBed` tools from [UCSC](https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.arm64/)
2. Make sure those two tools are in your `PATH`
   - You can add them to your path with `export PATH=$PATH:/your/directory/path`
3. Run using these commands, where you change the names of `input` and `output` to correspond to your file names `gtfToGenePred input.gtf output.genepred` and `genePredToBed output.genepred output.bed`
4. Now that you have a `.bed` file, all you need to do is color-code it and convert it to the `.bed12` format! You can do this by running the commands in `color2bed_isoforms.sh` to call `color2bed_proteinisoforms.py` housed in this directory.
5. Now upload to UCSC Genome Browser following the instructions in the [TrackHub](https://github.com/efwatts/PoGo2GenomeBrowser/tree/main/TrackHub) module
