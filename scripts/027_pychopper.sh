#!/bin/bash

set -eux

singularity exec -B /Volumes containers/pychopper_0.6.1.sif \
cdna_classifier.py \
-b data/cdna_barcodes.fas \
-r output/027_pychopper/report.pdf \
-u output/027_pychopper/unclassified.fastq \
-S output/027_pychopper/stats.txt \
-A output/027_pychopper/scores.txt \
-t 200 \
-s 45 \
output/010_combined.fastq \
output/020_pychopper/full_length_2.fastq
