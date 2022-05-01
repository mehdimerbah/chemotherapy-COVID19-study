#!/bin/bash


# Extract the target GENENAME, Pipe it into grep to filter out unwanted targets.

grep -e "GENENAME" covid19_target_data.txt | cut -f 3 | grep -i -v -E "(covid19|covid-19|mers-cov|sars-cov)"



