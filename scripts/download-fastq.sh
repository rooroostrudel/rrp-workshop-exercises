#!/bin/bash
set -euo pipefail
#Process R1 file
#Creating directory to hold sq files
mkdir -p ../data/raw/fastq/SRP255885
#Prinitng out a status message
echo "Obtaining the R1 file..."
#Download R file using Curl
curl https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset/subset-SRR11518889_1.fastq.gz > SRR11518889_1.fastq.gz
# Count the number of lines in file"
echo "The number of lines in SRR11518889_1.fastq.gz is:"
gunzip -c SRR11518889_1.fastq.gz | wc -l
#Mov the file to fastq file
mv SRR11518889_1.fastq.gz ../data/raw/fastq/SRP255885/

#Process R2 file
#Creating directory to hold sq files
#Prinitng out a status message
echo "Obtaining the R2 file..."
#Download R file using Curl
curl https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset/subset-SRR11518889_2.fastq.gz > SRR11518889_2.fastq.gz
# Count the number of lines in file"
echo "The number of lines in SRR11518889_2.fastq.gz is:"
gunzip -c SRR11518889_2.fastq.gz | wc -l
#Mov the file to fastq file
mv SRR11518889_2.fastq.gz ../data/raw/fastq/SRP255885/
