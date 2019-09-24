#1/usr/bin/env bash

set -eux

singularity exec -B /Volumes containers/funannotate_16500bc.sif \
funannotate mask \
-i data/GCF_003254395.2_Amel_HAv3.1_genomic.fna \
-o output/030_funannotate/mask.fa \
--cpus 20 \
&> logs/mask.log
