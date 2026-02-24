---
title: "hw3"
output: md_document
date: "2026-02-21"
author: "Ana Espeleta"
---


## Homework 3: Genome and Annotation Summaries

This document serves as the master report for Homework 3.  
All commands were executed inside my EE282 GitHub repository on the homework3 branch:

### Part 1: Download Genome:

```{bash, eval=FALSE}
mkdir -p ./data
cd ./data

base="https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/fasta"

wget -O md5sum.txt "${base}/md5sum.txt"
wget -O dmel-all-chromosome-r6.66.fasta.gz \
"${base}/dmel-all-chromosome-r6.66.fasta.gz"
```

This downloads the zipped genome fasta file and the official checksum file for verifying integrity in the next step.

### Part 2: Verify file integrity

```{bash, eval=FALSE}
grep 'dmel-all-chromosome-r6.66.fasta.gz' md5sum.txt > md5_one.txt
md5sum -c md5_one.txt
```

which gives the result:

```
dmel-all-chromosome-r6.66.fasta.gz: OK
```


### Part 3: Calculate summaries of the genome:

I created a script inside EE282/code/ called hw3_genome_summary.sh to summarize the genome.

To make the script executable, I ran: 

```{bash, eval=FALSE}
chmod +x ./code/hw3_genome_summary.sh
```

And to run the script, I used the command:

```{bash, eval=FALSE}
bash ./code/hw3_genome_summary.sh
```

This gave me the output:

```
total_nucleotides: 143726002
total_Ns: 1152978
total_sequences: 142573024
```

### Part 4: Download genome annotation file

In a similar way to before, I downloaded the genome annotation file and the checksum file.

```{bash, eval=FALSE}
cd ./data

base="https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/gtf"

wget "${base}/dmel-all-r6.66.gtf.gz"
wget "${base}/md5sum.txt"
```

*note*: for this part, I could not get mamba to work, so I compiled bioawk directly from GitHub. I made sure to include the command bioawk -c gff to ensure it recognized it.

### Part 5: Verify file integrity

```{bash, eval=FALSE}
grep dmel-all-r6.66.gtf.gz md5sum.txt.1 > gtf.md5
md5sum -c gtf.md5
```

Then I got the output:

```
dmel-all-r6.66.gtf.gz: OK
```

### Part 6: Annotation summary

I created the script hw3_annotation_summary.sh to generate annotation statistics also inside EE282/code

To make the script executable I ran: 

```{bash, eval=FALSE}
chmod +x ./code/hw3_annotation_summary.sh
```

And to run the script: 

```{bash, eval=FALSE}
bash ./code/hw3_annotation_summary.sh
```

This script generated the following feature counts:

```
190176 exon
163377 CDS
46856 5UTR
33778 3UTR
30922 start_codon
30862 stop_codon
30836 mRNA
17872 gene
3059 ncRNA
485 miRNA
365 pseudogene
312 tRNA
270 snoRNA
262 pre_miRNA
115 rRNA
32 snRNA
```

and the following genes per chromosome arm:

```
4226 3R
3649 2R
3508 2L
3481 3L
2704 X
114 4
113 Y
```
