# De novo genome assembly using Bionano optical map datasets
Acquired Bionano optical maps sequencing datasets were first filtered using length cutoff as 150
Kb and were used to derive Bionano de novo genome assembly. We used Canu-assembly as the
reference genome to guide de novo genome assembly and generated the “.cmap” file with length
cutoff as 20 Kb and at least five restriction digestion sites. Following commands were used to run
Bionano Solve (v 3.1) for reference guided genome assembly pipelinepython
pipelineCL.py -U -T 60 -j 60 -N 8 -f 0.3 -i 5 -y -b Molecules.bnx \
-l Output_Pumila \
-t ./RefAligner/6700.6902rel \
-a ./RefAligner/6700.6902rel/optArguments_haplotype_irys.xml \
-r Canu-assembly_BSSSI_20kb_5labels.cmap
Final de novo assembly using Bionano optical maps consisted of 458 scaffolds with scaffold N50
as 1.68 Mb and a cumulative assembly length of 442 Mb, with over 83% of optical maps mapped
to the Bionano de novo assembly. We next used Bionano de novo genome assembly to detect any
mis-assembly in the Canu-assembly and Falcon-unzip phased genome assembly.

# Assembly scaffolding
In this study, we performed scaffolding using Bionano de novo genome assembly as well as Hi-C
library pair-end sequencing datasets. Canu-assembly (or Falcon-unzip-assembly or genome
assemblies scaffolded using Hi-C library) was used together with Bionano de novo assembly to
derive hybrid scaffolding using Bionano Solve v3.0.1 software using the following commandperl
hybridScaffold.pl -n Canu-assembly.fasta -b Bionano_denovo_assembly.cmap -c
hybridScaffold_config_aggressive.xml \
-r ./Solve3.1_08232017/RefAligner/6700.6902rel/avx/RefAligner \
-o output -B2 -N2 -x -y \
-m Molecules.bnx \
-p ./Solve3.1_08232017/Pipeline/08212017 \
-q ./REFALIGNER/6700.6902rel/optArguments_nonhaplotype_irys.xml \
-e autoNoise1.errbin

# All figures related to assembly validation and other statistics are available through the manuscript. 
