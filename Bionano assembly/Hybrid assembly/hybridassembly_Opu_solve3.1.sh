#!/bin/bash

# Script to run Hybrid assembly
perl /home2/amit8chiba/Bionano_access/Solve3.1_08232017/HybridScaffold/08212017/hybridScaffold.pl \
-n o_pumila.fasta \
-b Opumila.cmap \
-c hybridScaffold_config_aggressive.xml \
-r RefAligner \
-o output -B2 -N2 -x -y \
-m Molecules.bnx \
-p ./Bionano_access/tools/pipeline/Solve3.1_08232017/Pipeline/08212017 \
-q OptArg_Irys.xml \
-e Bionano_autoNoise1.errbin

#NGS file: /home2/amit8chiba/O_pumila-Amit-20180605T013640Z-003-Phasegenomics-Assembly/Results/BN_contigs/polished_scaffolds/o_pumila.fasta 
#BNG file: /home2/amit8chiba/Bionano_access/Bionano_Solve_results/Denovo_bionano_maps/Opumila.cmap 
#Configuration file: /home2/amit8chiba/Bionano_access/Solve3.1_08232017/HybridScaffold/08212017/hybridScaffold_config_aggressive.xml 
#Output folder: /home2/amit8chiba/Bionano_access/Bionano_Solve_results/Denovo_bionano_maps/output
#Molecules file: /home2/amit8chiba/Bionano_access/Bionano_Solve_results/Denovo_bionano_maps/Molecules.bnx
#RefAligner binary: /home2/amit8chiba/Bionano_access/tools/pipeline/Solve3.1_08232017/RefAligner/6700.6902rel/avx/RefAligner

