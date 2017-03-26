#!/bin/bash


# ------ Setting up Directories ---- #
EXAMPLEDIR=../data/Example/
GWASDIR=../data/plink_files/

## Converting the original study files
pheno=${GWASDIR}/pheno.txt
gens1=${EXAMPLEDIR}/example.chr22.study.gens
samples1=${EXAMPLEDIR}/example.study.samples
out1=${GWASDIR}/real_small

# NOTE : make sure the chromosome is in the file 
awk '{$1=22; print $0}' ${gens1} > tmp.gens


#1. Running Plink2 to convert!
plink2 --gen tmp.gens --sample ${samples1}  --hard-call-threshold 0.1 --recode --out ${out1}

rm tmp.gens

#2. Creating a phenotype file to perform association with 
awk '{print $1,$2}' ${out1}.ped | paste - ${pheno} > ${out1}.pheno

