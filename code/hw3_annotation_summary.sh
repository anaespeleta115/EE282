#!/usr/bin/env bash

GTF="../data/dmel-all-r6.66.gtf.gz"
OUTDIR="./out"
OUTFILE="$OUTDIR/annotation_summary.tsv"

{
  echo "### Feature counts: "
  bioawk -c gff '{print $feature}' "$GTF" \
  | sort \
  | uniq -c \
  | sort -nr

  echo
  echo "### Genes per chromosome arm:"
  bioawk -c gff '$feature=="gene" {print $seqname}' "$GTF" \
  | grep -E '^(X|Y|2L|2R|3L|3R|4)$' \
  | sort \
  | uniq -c \
  | sort -nr

} > "$OUTFILE"

echo "Annotation summary in $OUTFILE"
