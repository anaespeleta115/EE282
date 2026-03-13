#!/usr/bin/env bash

GENOME="../data/dmel-all-chromosome-r6.66.fasta.gz"
OUTDIR="./out"

# Get faSize output
line=$(faSize "$GENOME" | head -n 1)

bases=$(echo "$line" | awk '{print $1}')
Ns=$(echo "$line" | awk '{print $3}')
seqs=$(echo "$line" | awk '{print $7}')   # "in <seqs> sequences"

# Write summary
{
  echo -e "metric\tvalue"
  echo -e "total_nucleotides\t$bases"
  echo -e "total_Ns\t$Ns"
  echo -e "total_sequences\t$seqs"
} > "$OUTDIR/genome_summary.tsv"

echo "Summary in $OUTDIR/genome_summary.tsv"
