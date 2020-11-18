#!/bin/sh
#$ -S /bin/sh
#$ -l medium
#$ -N Ggmeta281020
#$ -o Ggmeta281020_output2
#$ -e Ggmeta281020_error2
#$ -pe def_slot 16-120
#$ -l mem_req=16G
#$ -l s_vmem=16G
#$ -cwd

#utgOvlErrorRate=0.085 \

#This is the first metaassembly derived using corrected and split reads, Before that, I used this command, ln -s ../32_G_glabra_split_assembly.fasta ./ to create a soft link, and then called this link. This is better.

/lustre7/home/lustre3/amit-rai8chiba/canu-2.0/Linux-amd64/bin/canu -assemble \
-p Gg_meta_all_l10k -d ./Gg_meta_all_l10k \
genomeSize=400m \
-pacbio-corrected ./Gglabra_purged_all60_combined.fasta \
useGrid=0 \
#cnsConsensus=utgcns \
minOverlapLength=10000 \
minReadLength=10000 \
gridOptionsJobName=Ggmeta281020 \
correctedErrorRate=0.02 \
executiveMemory=$NSLOTS

/lustre7/home/lustre3/amit-rai8chiba/canu-2.0/Linux-amd64/bin/canu -assemble \
-p Gg_meta_all_l5k -d ./Gg_meta_all_l5k \
genomeSize=400m \
-pacbio-corrected ./Gglabra_purged_all60_combined.fasta \
useGrid=0 \
#cnsConsensus=utgcns \
minOverlapLength=5000 \
minReadLength=10000 \
gridOptionsJobName=Ggmeta281020 \
correctedErrorRate=0.02 \
executiveMemory=$NSLOTS
