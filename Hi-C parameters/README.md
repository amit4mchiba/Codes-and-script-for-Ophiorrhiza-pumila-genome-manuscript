# Hi-C scaffolding

Hi-C based scaffolding of Canu-Bionano-assembly, after splitting assembly at the gaps, was derived through the Proximo Hi-C scaffolding pipeline (Phase genomics, CA, USA), as described previously. The proximity-guided assembly performed chromosome clustering and determined contig orientations. Briefly, the Proximo Hi-C scaffolding pipeline is based on an enhanced version of LACHESIS algorithm, which additionally performs scaffold optimization and quality-control steps based on interaction probabilities to group and orient contigs. Hi-C interactions binned the contigs into eleven groups (corresponding to the haploid or phased chromosomes) and successfully oriented all contigs. The gap-size between the ordered contigs was set to 25 bp. Canu-assembly, scaffolded through Bionano followed by Hi-C, was further tested for the assembly conflicts and was thoroughly verified using Hi-C reads based contact matrix, Bionano raw reads and Bionano de novo assembly (Fig. 3b-l, and Supplementary Figs. 8-9).

Assembly stats and other details are provided through manuscript supplimentary file