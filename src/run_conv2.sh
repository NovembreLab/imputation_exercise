#!/bin/bash


# ------ Setting up Directories ---- #
EXAMPLEDIR=../data/Example/
GWASDIR=../data/plink_files/

## Converting the original study files
# TODO : add the phenotype...
pheno=${GWASDIR}/pheno.txt
gens1=${EXAMPLEDIR}/example.chr22.one.phased.impute2
samples1=${EXAMPLEDIR}/example.study.samples
out1=${GWASDIR}/real_small_imputed

# Making sure the chromosome is in the file 
awk '{$1=22; print $0}' ${gens1} > tmp.gens

# Running Plink2 to convert!
plink2 --gen tmp.gens --sample ${samples1} --recode --out ${out1}

rm tmp.gens

awk '{print $1,$2}' ${out1}.ped | paste - ${pheno} > ${out1}.pheno


