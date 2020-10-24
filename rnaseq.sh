#!/usr/bin/bash
date

# 1. copy fastq files
cp -f /localdisk/data/BPSM/Assignment1/fastq/*.gz ./
gunzip -f *.gz

# make a result dir for fastqc result
mkdir fastqc_result
# fastqc
fastqc -o ./fastqc_result -t 6 *.fq
