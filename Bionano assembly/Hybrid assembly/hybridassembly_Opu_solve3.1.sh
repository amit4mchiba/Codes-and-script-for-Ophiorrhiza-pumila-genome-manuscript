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
