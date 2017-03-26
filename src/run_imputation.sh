#!/bin/bash

# This script runs the initial imputation example

#1. Setting the Directories
EXAMPLEDIR=../data/Example

#2. Setting the Appropriate Filenames
MAP=${EXAMPLEDIR}/example.chr22.map
HAPS=${EXAMPLEDIR}/example.chr22.1kG.haps
LEGEND=${EXAMPLEDIR}/example.chr22.1kG.legend

GENS=${EXAMPLEDIR}/example.chr22.study.gens
STRAND=${EXAMPLEDIR}/example.chr22.study.strand

NE=20000

OUT=${EXAMPLEDIR}/example.chr22.one.phased.impute2


#3. Running IMPUTE2

impute2 -m ${MAP} -h ${HAPS} -l ${LEGEND} -g ${GENS} -strand_g ${STRAND} -int 20.3e6 20.6e6 -Ne ${NE} -o ${OUT}


