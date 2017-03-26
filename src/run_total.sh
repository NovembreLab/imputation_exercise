#!/bin/bash

#1. Running Original Imputation
bash run_imputation.sh

#2. File Conversions
#2a. File Conversion (Array)
bash run_conv1.sh

#2b. File Conversion (Imputed)
bash run_conv2.sh

#3. GWAS
#3a. GWAS (Array)
bash gwas_array.sh

#3b. GWAS (Imputed genotypes)
bash gwas_imputed.sh


