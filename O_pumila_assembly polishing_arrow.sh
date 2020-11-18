#!/bin/bash

echo "First round of arrow based polishing begins"
# first round of arrow polishing
/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/blasr \
/mnt/md0/O_pumila_polished_genome/O_pumila_kurabo_novogene_genome_support_all.bam \
/mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1.fasta \
--bam --out /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_1st_round.bam --nproc 24


/home/amit8chiba/software/samtools-1.3.1/samtools sort \
-T /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/temp/240718_pumila_pbjelly_hap1_arrow_1st_round.sorted \
/mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_1st_round.bam \
-o /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_1st_round_sorted.bam


/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/pbindex /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_1st_round_sorted.bam


/home/amit8chiba/software/samtools-1.3.1/samtools faidx /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1.fasta



/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/arrow /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_1st_round_sorted.bam \
--referenceFilename /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1.fasta \
-o /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow1_polished.fasta \
-o /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow1_polished.gff \
-o /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow1_polished.fastq -j 24

echo "Second round of arrow based polishing begins"
# Second round of arrow polishing
/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/blasr \
/mnt/md0/O_pumila_polished_genome/O_pumila_kurabo_novogene_genome_support_all.bam \
/mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow1_polished.fasta \
--bam --out /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_2nd_round.bam --nproc 24


/home/amit8chiba/software/samtools-1.3.1/samtools sort \
-T /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/temp/240718_pumila_pbjelly_hap1_arrow_2nd_round.sorted \
/mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_2nd_round.bam \
-o /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_2nd_round_sorted.bam


/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/pbindex /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_2nd_round_sorted.bam


/home/amit8chiba/software/samtools-1.3.1/samtools faidx /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow1_polished.fasta



/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/arrow /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_2nd_round_sorted.bam \
--referenceFilename /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow1_polished.fasta \
-o /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow2_polished.fasta \
-o /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow2_polished.gff \
-o /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow2_polished.fastq -j 24


echo "Third round of arrow based polishing begins"
# Third round of arrow polishing
/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/blasr \
/mnt/md0/O_pumila_polished_genome/O_pumila_kurabo_novogene_genome_support_all.bam \
/mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow2_polished.fasta \
--bam --out /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_3rd_round.bam --nproc 24


/home/amit8chiba/software/samtools-1.3.1/samtools sort \
-T /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/temp/240718_pumila_pbjelly_hap1_arrow_3rd_round.sorted \
/mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_3rd_round.bam \
-o /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_3rd_round_sorted.bam


/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/pbindex /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_3rd_round_sorted.bam


/home/amit8chiba/software/samtools-1.3.1/samtools faidx /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow2_polished.fasta



/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/arrow /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow_3rd_round_sorted.bam \
--referenceFilename /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow2_polished.fasta \
-o /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow3_polished.fasta \
-o /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow3_polished.gff \
-o /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow3_polished.fastq \
-o /mnt/md0/Pumila_genome_17072018/O_pumila_hap1_final/240718_pumila_pbjelly_hap1_arrow3_polished.vcf -j 24
