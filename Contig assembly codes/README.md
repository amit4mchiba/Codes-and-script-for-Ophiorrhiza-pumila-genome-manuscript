# Codes used to generate contig level genome assembly for Ophiorrhiza pumila

To generate contig level genome assembly of Ophiorrhiza pumila, we mainly used Canu (https://github.com/marbl/canu) and Falcon-unzip (https://github.com/PacificBiosciences/pb-assembly). We tried different parameters, and were able to achieve a highly contigous genome assembly.

The key to our success of getting a high quality contig scale genome assembly was parameter optimization, which we did for both of the assemblers. We also tried other Pacbio assemblers, but our results for Canu and Falcon-unzip were best when compared to other options. 

The parameters used for Canu and Falcon-unzip are provided as supplementary file of the manuscript, while config file for Falcon-unzip is avaiable here. Falcon-unzip results were used for subsquently derive phased genome of Ophiorrhiza pumila, while canu assembly were used to achieve reference genome.
