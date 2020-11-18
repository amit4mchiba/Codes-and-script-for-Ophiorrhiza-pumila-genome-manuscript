#!/bin/bash

perl --version

#perlbrew use perl-5.14.4

#perl --version


perl /home/amit8chiba/software/bionano/Solve3.1_08232017/HybridScaffold/08212017/hybridScaffold.pl \
-n /mnt/md0/Bionano_data/bionano_analysis/sample_assembly_working_directory/fasta_and_cmap/O_pumila_15thFeb2018_all.contigs.fa \
-b /mnt/md0/Bionano_data/Bionano_Solve_results/O_pumila_bionano/testMyAssembly/contigs/exp_refineFinal1/EXP_REFINEFINAL1.cmap \
-c /home/amit8chiba/software/bionano/Solve3.1_08232017/HybridScaffold/08212017/hybridScaffold_config_aggressive.xml \
-r /home/amit8chiba/software/bionano/Solve3.1_08232017/RefAligner/6700.6902rel/RefAligner \
-o /mnt/md0/Bionano_data/Bionano_Solve_results/O_pumila_bionano/O_pumila_hybrid_scaffold_output \
-f \
-B 2 \
-N 2 \
-x \
-y \
-m /mnt/md0/Bionano_data/Bionano_Solve_results/O_pumila_bionano/O_pumila_molecule_merged.bnx \
-p /home/amit8chiba/software/bionano/scripts \
-q /home/amit8chiba/software/bionano/scripts/optArguments_medium.xml \
-e /mnt/md0/Bionano_data/Bionano_Solve_results/O_pumila_bionano/O_pumila_hybrid_scaffold_output/contigs/auto_noise/autoNoise1.errbin
