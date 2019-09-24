#!/bin/bash

set -eux

singularity exec -B /Volumes containers/pychopper_0.6.1.sif \
cdna_classifier.py \
-b data/cdna_barcodes.fas \
-r output/029_pychopper/report.pdf \
-u output/029_pychopper/unclassified.fastq \
-S output/029_pychopper/stats.txt \
-A output/029_pychopper/scores.txt \
-t 400 \
-s 98 \
output/010_combined.fastq \
output/020_pychopper/full_length_029.fastq
