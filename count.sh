#!/bin/bash

#PBS -N count
#PBS -q christ99
#PBS -l nodes=1:ppn=1,naccesspolicy=shared
#PBS -l walltime=300:00:00
#PBS -m abe
#PBS -M jwillou@purdue.edu

cd $PBS_O_WORKDIR

module purge
module load bioinfo

#gunzip 016402_Pool-2_CGATGT_R1_filteredNseq.fastq.gz
#gunzip 016402_Pool-2_CGATGT_R2_filteredNseq.fastq.gz

#count mapped reads
#grep '@pool1' -c 016401_Pool-1_ATCACG_R1_filteredNseq.fastq > counts/p01R1.txt
#grep '@pool2' -c 016402_Pool-2_CGATGT_R1_filteredNseq.fastq > counts/p02R1.txt
#grep '@pool3' -c 016403_Pool-3_TTAGGC_R1_filteredNseq.fastq > counts/p03R1.txt
#grep '@pool4' -c 016404_Pool-4_TGACCA_R1_filteredNseq.fastq > counts/p04R1.txt
#grep '@pool5' -c 016405_Pool-5_ACAGTG_R1_filteredNseq.fastq > counts/p05R1.txt
#grep '@pool6' -c 016406_Pool-6_GCCAAT_R1_filteredNseq.fastq > counts/p06R1.txt
#grep '@pool7' -c 016407_Pool-7_CAGATC_R1_filteredNseq.fastq > counts/p07R1.txt
#grep '@pool8' -c 016408_Pool-8_ACTTGA_R1_filteredNseq.fastq > counts/p08R1.txt
#grep '@pool9' -c 016409_Pool-9_GATCAG_R1_filteredNseq.fastq > counts/p09R1.txt
grep '@pool10' -c 016410_Pool-10_TAGCTT_R1_filteredNseq.fastq > counts/p10R1.txt

#grep '@pool1' -c 016401_Pool-1_ATCACG_R2_filteredNseq.fastq > counts/p01R2.txt
#grep '@pool2' -c 016402_Pool-2_CGATGT_R2_filteredNseq.fastq > counts/p02R2.txt
#grep '@pool3' -c 016403_Pool-3_TTAGGC_R2_filteredNseq.fastq > counts/p03R2.txt
#grep '@pool4' -c 016404_Pool-4_TGACCA_R2_filteredNseq.fastq > counts/p04R2.txt
#grep '@pool5' -c 016405_Pool-5_ACAGTG_R2_filteredNseq.fastq > counts/p05R2.txt
#grep '@pool6' -c 016406_Pool-6_GCCAAT_R2_filteredNseq.fastq > counts/p06R2.txt
#grep '@pool7' -c 016407_Pool-7_CAGATC_R2_filteredNseq.fastq > counts/p07R2.txt
#grep '@pool8' -c 016408_Pool-8_ACTTGA_R2_filteredNseq.fastq > counts/p08R2.txt
#grep '@pool9' -c 016409_Pool-9_GATCAG_R2_filteredNseq.fastq > counts/p09R2.txt
grep '@pool10' -c 016410_Pool-10_TAGCTT_R2_filteredNseq.fastq > counts/p10R2.txt
