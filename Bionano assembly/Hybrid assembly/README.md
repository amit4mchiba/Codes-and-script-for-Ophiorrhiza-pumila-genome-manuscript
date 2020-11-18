# Bionano-Contig stage assembly hybrid scaffolding
In this study, we performed scaffolding using Bionano de novo genome assembly as well as Hi-C
library pair-end sequencing datasets. Canu-assembly (or Falcon-unzip-assembly or genome
assemblies scaffolded using Hi-C library) was used together with Bionano de novo assembly to
derive hybrid scaffolding using Bionano Solve v3.0.1 software.

We tested individual scaffolding using Bionano de novo assembly or Hi-C libraries, as well as intandem
scaffolding using both Bionano de novo assembly and Hi-C libraries sequencing datasets.
Bionano scaffolding for Canu-assembly resulted in 83 contigs (out of 108 contigs) assigned to 45
scaffolds, with contig and scaffold N50 as 8.21 Mb and 21.05 Mb, respectively, and cumulative
genome assembly as 442Mb. In total, we detected 15 chimeric sites in 9 contigs, which
were manually verified and were used as evidence to split at the sites of misassemblies, leading to
contig N50 drop to 8.21 Mb from 9.38 Mb. Bionano-scaffolded Canu-assembly also consisted of
117 assembly gaps.

# Raw Bionano Molecules files are deposited under DRA009076; BioProject id- PRJDB8685, BioSample id- SAMD00177989; Experiment- DRX185163-DRX185191; Run: DRR194711-DRR194739. All analysis and figures are available through manuscript main file and supplementary files
