#!/bin/bash

set -eux

singularity exec -B /Volumes containers/pychopper_0.6.1.sif \
cdna_classifier.py \
-b data/cdna_barcodes.fas \
-r output/020_pychopper/report.pdf \
-u output/020_pychopper/unclassified.fastq \
-S output/020_pychopper/stats.txt \
-A output/020_pychopper/scores.txt \
output/010_combined.fastq \
output/020_pychopper/full_length.fastq
