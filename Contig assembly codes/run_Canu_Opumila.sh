#!/bin/sh
#$ -S /bin/sh
#$ -l medium
#$ -N Opumila
#$ -o Opumila_output
#$ -e Opumila_error
#$ -pe def_slot 16-120
#$ -l mem_req=16G
#$ -l s_vmem=16G
#$ -cwd


#This is the example script. We used different parameters and created multiple contig assemblies using different lengths, error rates and so on.
# Specific parameters and the resulting assembly statistics are described in the method section and available as supplementary file.

/lustre7/home/lustre3/amit-rai8chiba/canu-2.0/Linux-amd64/bin/canu \
-p Opumila -d ./Opumila \
genomeSize=400m \
-pacbio ./Opumila_all_raw_PACBIO.fasta \
useGrid=0 \
minOverlapLength=1000 \
minReadLength=10000 \
gridOptionsJobName=Opumila \
correctedErrorRate=0.085 \
executiveMemory=$NSLOTS

