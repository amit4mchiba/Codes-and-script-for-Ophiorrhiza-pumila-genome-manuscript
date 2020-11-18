#!/bin/bash

# This step is to index arrow polished pumila genome. Also, fasta file for reference and index file should reside in the same folder

O_pumila_genome_arrow3_polished.fasta



#/home/amit8chiba/software/transcriptome_tools/Biobuilds-2017.11/bin/bwa mem -aHM -t 36 \
#.O_pumila_genome_arrow3_polished.fasta \
#/mnt/md0/O_pumila_illumina_seq_DNA/Op1_s_1_1_sequence_forward_paired.fastq.gz \
#/mnt/md0/O_pumila_illumina_seq_DNA/Op1_s_1_2_sequence_reverse_paired.fastq.gz > ./Op1_s_1_1_pBjelly_out_arrow3_polished.sam


#/home/amit8chiba/software/transcriptome_tools/Biobuilds-2017.11/bin/bwa mem -aHM -t 36 \
#.O_pumila_genome_arrow3_polished.fasta \
#/mnt/md0/O_pumila_illumina_seq_DNA/Op2_s_1_1_sequence_forward_paired.fastq.gz \
#/mnt/md0/O_pumila_illumina_seq_DNA/Op2_s_1_2_sequence_reverse_paired.fastq.gz > ./Op2_s_1_1_pBjelly_out_arrow3_polished.sam


#/home/amit8chiba/software/transcriptome_tools/Biobuilds-2017.11/bin/bwa mem -aHM -t 36 \
#.O_pumila_genome_arrow3_polished.fasta \
#/mnt/md0/O_pumila_illumina_seq_DNA/Op3_s_2_1_sequence_forward_paired.fastq.gz \
#/mnt/md0/O_pumila_illumina_seq_DNA/Op3_s_2_2_sequence_reverse_paired.fastq.gz > ./Op3_s_2_1_pBjelly_out_arrow3_polished.sam



# next step is to convert sam file thus generated into bam file

/home/amit8chiba/software/samtools-1.3.1/samtools view -Sb ./Op1_s_1_1_pBjelly_out_arrow3_polished.sam > ./Op1_s_1_1_pBjelly_out_arrow3_polished.bam

/home/amit8chiba/software/samtools-1.3.1/samtools view -Sb ./Op2_s_1_1_pBjelly_out_arrow3_polished.sam > ./Op2_s_1_1_pBjelly_out_arrow3_polished.bam

/home/amit8chiba/software/samtools-1.3.1/samtools view -Sb ./Op3_s_2_1_pBjelly_out_arrow3_polished.sam > ./Op3_s_2_1_pBjelly_out_arrow3_polished.bam


# And final step is sorting bam files.

/home/amit8chiba/software/samtools-1.3.1/samtools sort -T ./temp/Op1_s_1_1_pBjelly_out_arrow3_polished_bam.sorted ./Op1_s_1_1_pBjelly_out_arrow3_polished.bam -o ./Op1_s_1_1_pBjelly_out_arrow3_polished_sorted.bam

/home/amit8chiba/software/samtools-1.3.1/samtools sort -T ./temp/Op2_s_1_1_pBjelly_out_arrow3_polished_bam.sorted ./Op2_s_1_1_pBjelly_out_arrow3_polished.bam -o ./Op2_s_1_1_pBjelly_out_arrow3_polished_sorted.bam

/home/amit8chiba/software/samtools-1.3.1/samtools sort -T ./temp/Op3_s_2_1_pBjelly_out_arrow3_polished_bam.sorted ./Op3_s_2_1_pBjelly_out_arrow3_polished.bam -o ./Op3_s_2_1_pBjelly_out_arrow3_polished_sorted.bam





# This step for indexing sorting bam files and indexing fasta files that will eventually used for pilon analysis

/home/amit8chiba/software/samtools-1.3.1/samtools index ./Op1_s_1_1_pBjelly_out_arrow3_polished_sorted.bam

/home/amit8chiba/software/samtools-1.3.1/samtools index ./Op2_s_1_1_pBjelly_out_arrow3_polished_sorted.bam

/home/amit8chiba/software/samtools-1.3.1/samtools index ./Op3_s_2_1_pBjelly_out_arrow3_polished_sorted.bam

/home/amit8chiba/software/samtools-1.3.1/samtools faidx .O_pumila_genome_arrow3_polished.fasta


# This step is after generating bam files and its sorting. Here we are using pilon to correct our assembly

java -Xmx450G -jar /mnt/md0/pilon-1.22.jar \
--genome .O_pumila_genome_arrow3_polished.fasta \
--frags ./Op1_s_1_1_pBjelly_out_arrow3_polished_sorted.bam \
--frags ./Op2_s_1_1_pBjelly_out_arrow3_polished_sorted.bam \
--frags ./Op3_s_2_1_pBjelly_out_arrow3_polished_sorted.bam \
--outdir Pilon_output \
--output O_pumila_pilon --vcf --fix all --mindepth 0.1 --changes --vcfqe --tracks --verbose --diploid

