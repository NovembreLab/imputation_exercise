#!/bin/bash

plink2 --file ../data/plink_files/real_small_imputed --pheno ../data/plink_files/real_small_imputed.pheno --allow-no-sex --assoc --out ../results/gwas_imputed
