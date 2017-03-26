#!/bin/bash

#1. Running GWAS on Original Array Data 
plink2 --file ../data/plink_files/real_small --pheno ../data/plink_files/real_small.pheno --allow-no-sex --assoc --out ../results/gwas_array 
