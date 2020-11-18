#!/bin/bash


echo "This is another round of bionano guided de novo assembly, but this one is for hybrid scaffolding. The previous one is for sv calling. Here I have used filtering bnx for atleast 5 sites, and have chnaged the .xml file accordingly"

python /home/amit8chiba/software/bionano/Solve3.1_08232017/Pipeline/08212017/pipelineCL.py -U -T 120 -j 60 -N 8 -f 0.3 -i 5 -y -b /mnt/md0/Bionano_data/Bionano_Solve_results/Pumila_pbjelly_arrow_pilon/Molecules.bnx \
-l /mnt/md0/Bionano_data/Bionano_Solve_results/Opu_r1.2/Bionano_Op_strict/Output_strict_Opu_r1.2_denovo \
-t /home/amit8chiba/software/bionano/Solve3.1_08232017/RefAligner/6700.6902rel \
-a /home/amit8chiba/software/bionano/Solve3.1_08232017/RefAligner/6700.6902rel/optArguments_nonhaplotype_irys_Amit_4thMay2018.xml \
-r /mnt/md0/Bionano_data/Bionano_Solve_results/Opu_r1.2/Bionano_Op_strict/Opu_r1.2_BSSSI_20kb_5labels.cmap


echo "Today is 24th July 2018, and I am using our final draft genome and map bionano to check quality of the assembly. Here, we are using Molecules identified by Irys viewer and filtered for length as 100kb. Here I have used filtering bnx for atleast 5 sites, and have chnaged the .xml file accordingly"

python /home/amit8chiba/software/bionano/Solve3.1_08232017/Pipeline/08212017/pipelineCL.py -U -T 120 -j 60 -N 8 -f 0.3 -i 5 -y -b /mnt/md0/Bionano_data/Bionano_Solve_results/Pumila_pbjelly_arrow_pilon/Molecules.bnx \
-l /mnt/md0/Bionano_data/Bionano_Solve_results/Opu_r1.2/Bionano_Op_strict/Output_strict_Opu_r1.2_sv \
-t /home/amit8chiba/software/bionano/Solve3.1_08232017/RefAligner/6700.6902rel \
-a /home/amit8chiba/software/bionano/Solve3.1_08232017/RefAligner/6700.6902rel/optArguments_haplotype_irys_Amit_4thMay2018.xml \
-r /mnt/md0/Bionano_data/Bionano_Solve_results/Opu_r1.2/Bionano_Op_strict/Opu_r1.2_BSSSI_20kb_5labels.cmap