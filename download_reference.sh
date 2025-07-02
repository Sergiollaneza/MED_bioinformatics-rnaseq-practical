#!/bin/bash

# Create reference directory
mkdir -p reference_genome && cd reference_genome

# Download GRCh37 FASTA and GTF
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/GCF_000001405.13_GRCh37/GCF_000001405.13_GRCh37_genomic.fna.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/GCF_000001405.13_GRCh37/GCF_000001405.13_GRCh37_genomic.gtf.gz

gunzip GCF_000001405.13_GRCh37_genomic.fna.gz
gunzip GCF_000001405.13_GRCh37_genomic.gtf.gz

mv GCF_000001405.13_GRCh37_genomic.fna GRCh37_reference.fa
mv GCF_000001405.13_GRCh37_genomic.gtf GRCh37_reference.gtf
