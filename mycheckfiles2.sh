#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"
head -1 rplpl-slurm*.out rs*-slurm*.out

echo "End Times"
tail -n 5 rplpl-slurm*.out rs*-slurm*.out
