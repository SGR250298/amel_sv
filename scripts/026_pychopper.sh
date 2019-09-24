#!/bin/bash

set -eux

singularity exec -B /Volumes containers/pychopper_0.6.1.sif \
cdna_classifier.py \
-b data/cdna_barcodes.fas \
-r output/026_pychopper/report.pdf \
-u output/026_pychopper/unclassified.fastq \
-S output/026_pychopper/stats.txt \
-A output/026_pychopper/scores.txt \
-t 100 \
-s 90 \
output/010_combined.fastq \
output/020_pychopper/full_length_2.fastq
