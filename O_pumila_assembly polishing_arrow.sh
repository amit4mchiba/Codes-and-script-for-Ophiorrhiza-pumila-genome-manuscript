#!/bin/bash

echo "First round of arrow based polishing begins"
# first round of arrow polishing
/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/blasr \
O_pumila_all_PACBIO_raw_Reads.bam \
O_pumila_genome.fasta \
--bam --out O_pumila_genome_arrow_1st_round.bam --nproc 24


/home/amit8chiba/software/samtools-1.3.1/samtools sort \
-T O_pumila_genome_arrow_1st_round.sorted \
O_pumila_genome_arrow_1st_round.bam \
-o O_pumila_genome_arrow_1st_round_sorted.bam


/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/pbindex O_pumila_genome_arrow_1st_round_sorted.bam


/home/amit8chiba/software/samtools-1.3.1/samtools faidx O_pumila_genome.fasta



/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/arrow O_pumila_genome_arrow_1st_round_sorted.bam \
--referenceFilename O_pumila_genome.fasta \
-o O_pumila_genome_arrow1_polished.fasta \
-o O_pumila_genome_arrow1_polished.gff \
-o O_pumila_genome_arrow1_polished.fastq -j 24

echo "Second round of arrow based polishing begins"
# Second round of arrow polishing
/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/blasr \
O_pumila_all_PACBIO_raw_Reads.bam \
O_pumila_genome_arrow1_polished.fasta \
--bam --out O_pumila_genome_arrow_2nd_round.bam --nproc 24


/home/amit8chiba/software/samtools-1.3.1/samtools sort \
-T O_pumila_genome_arrow_2nd_round.sorted \
O_pumila_genome_arrow_2nd_round.bam \
-o O_pumila_genome_arrow_2nd_round_sorted.bam


/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/pbindex O_pumila_genome_arrow_2nd_round_sorted.bam


/home/amit8chiba/software/samtools-1.3.1/samtools faidx O_pumila_genome_arrow1_polished.fasta



/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/arrow O_pumila_genome_arrow_2nd_round_sorted.bam \
--referenceFilename O_pumila_genome_arrow1_polished.fasta \
-o O_pumila_genome_arrow2_polished.fasta \
-o O_pumila_genome_arrow2_polished.gff \
-o O_pumila_genome_arrow2_polished.fastq -j 24


echo "Third round of arrow based polishing begins"
# Third round of arrow polishing
/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/blasr \
O_pumila_all_PACBIO_raw_Reads.bam \
O_pumila_genome_arrow2_polished.fasta \
--bam --out O_pumila_genome_arrow_3rd_round.bam --nproc 24


/home/amit8chiba/software/samtools-1.3.1/samtools sort \
-T O_pumila_genome_arrow_3rd_round.sorted \
O_pumila_genome_arrow_3rd_round.bam \
-o O_pumila_genome_arrow_3rd_round_sorted.bam


/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/pbindex O_pumila_genome_arrow_3rd_round_sorted.bam


/home/amit8chiba/software/samtools-1.3.1/samtools faidx O_pumila_genome_arrow2_polished.fasta



/mnt/HD1/pacbio/smrtlink/smrtcmds/bin/arrow O_pumila_genome_arrow_3rd_round_sorted.bam \
--referenceFilename O_pumila_genome_arrow2_polished.fasta \
-o O_pumila_genome_arrow3_polished.fasta \
-o O_pumila_genome_arrow3_polished.gff \
-o O_pumila_genome_arrow3_polished.fastq \
-o O_pumila_genome_arrow3_polished.vcf -j 24


