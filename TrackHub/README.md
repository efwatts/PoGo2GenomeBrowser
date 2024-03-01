# Make Track Hub for Genome Browser
## After creating a BED file with PoGo, make a bigBED `.bb` or color-coded `.bed12` file
Make a repository with bigBED files to link to UCSC Genome Browser <br />
This will create two files: hub.txt and genome.txt <br />
It will also create a file of .bb files. These can be linked to Genome Browser via the `Raw` link

## PoGo or other track visualization pipelines will output BED and/or GTF files. These need to be made into `bigBED` files OR color-coded `.bed12` files
### To make bigBED files, follow these steps:
The official TrackHub tutorial can be found [here](https://www.sanger.ac.uk/tool/trackhub-generator/). This tutorial was adapted from that site. <br />
- Download `bedTobigBed` and `fetchChromSizes` from the [UCSC Directory](https://hgdownload.soe.ucsc.edu/admin/exe/)
  - These are opertating system-specific, so to determine which download is most appropriate, run the code below in your terminal
    ```
    uname -a
    ```
- Download the `TrackHubGenerator.pl` [script](https://github.com/cschlaffner/TrackHubGenerator)
- Ensure that you have [Perl](https://www.perl.org/) installed on your machine
- Run `TrackHubGenerator.pl`, changing the names to the appropriate places on your machine. Also, change `assemblygenome` to be the name of your assembly genome.
  ```
  perl TrackHubGenerator.pl /outputfolder assemblygenome /BEDfilesfolder /UCSCexecutablesfolder youremail@virginia.edu
  ``` 
#### These bigBED files need to be added to a web accessible track hub for the [UCSC Genome Browser](https://genome.ucsc.edu/)
- The output of the script can be put into a GitHub repository and linked to the [UCSC Genome Browser](https://genome.ucsc.edu/)! <br />
- Make a repository that contains the `hub.txt` and `genome.txt` files created by the `TrackHubGenerator.pl` script. It should also contain the folder called `assemblygenome` that is full of .bb files. <br />
- Go to the [UCSC Genome Browser](https://genome.ucsc.edu/) website. Selec `MyData` ➡️ `CustomTracks` ➡️ `add custom tracks`
- Paste the links to your .bb files in your GitHub repository
  - You can do this by `Ctl+Click` on the `Raw` button in your repository <br />
  **Now your tracks are added to Genome Browser!**
  
### To make color-coded `.bed12` files, follow these steps: 
- Run the script in this repository `/scripts/color2bed.py`
- As of March 1, 2024, this is a first draft script...meaning you will need to manually direct it to your files.
#### These .bed12 files need to be added to a web accessible track hub for the [UCSC Genome Browser](https://genome.ucsc.edu/)
- The output of the script can be put into a GitHub repository and linked to the [UCSC Genome Browser](https://genome.ucsc.edu/)! <br />
- Make a repository that contains the `.bed12` files output by the `color2bed.py` script. <br />
- Go to the [UCSC Genome Browser](https://genome.ucsc.edu/) website. Selec `MyData` ➡️ `CustomTracks` ➡️ `add custom tracks`
- Paste the links to your .bb files in your GitHub repository
  - You can do this by `Ctl+Click` on the `Raw` button in your repository <br />
**Now your tracks are added to Genome Browser!**

