#!/bin/bash

set -eux

cat data/raw_reads/*.fastq > output/010_combined.fastq
