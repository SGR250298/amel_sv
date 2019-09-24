#!/bin/bash

set -eux

singularity exec -B /Volumes containers/pychopper_0.6.1.sif \
cdna_classifier.py \
-b data/cdna_barcodes.fas \
-r output/028_pychopper/report.pdf \
-u output/028_pychopper/unclassified.fastq \
-S output/028_pychopper/stats.txt \
-A output/028_pychopper/scores.txt \
-t 20 \
-s 99 \
output/010_combined.fastq \
output/020_pychopper/full_length_028.fastq
