#!/bin/bash


EXAMPLEDIR=../data/Example/
GWASDIR=../data/plink_files/
RESULTSDIR=../results/

#1. Clean Imputed Stuff
rm ${EXAMPLEDIR}/example.chr22.one.phased.*

#2. Clean GWAS Data
rm ${GWASDIR}/real_small*

#3. Clean Results
rm ${RESULTSDIR}/*.assoc
rm ${RESULTSDIR}/*.log
rm ${RESULTSDIR}/*.nosex


