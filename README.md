IMPUTE2_Exercise
---------------

## Introduction

This is an introduction to imputation by using impute2



## Setup

In order to setup the working environment for this workshop, we will be using git and anaconda in order to setup our environment.

To get started, run:

```
git clone https://github.com/NovembreLab/IMPUTE2_Exercise
cd IMPUTE2_Exercise
``` 

Then we install `miniconda`, which will allow us to maintain all of the dependencies in our working environment.

```
wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
chmod 755 Miniconda2-latest-Linux-x86_64.sh
./Miniconda2-latest-Linux-x86_64.sh
```

Afrer agreeing to everything that the installation of conda asks you to do, run:

```
source ~/.bashrc
conda env create -f imputation_exercise_environment.yml
```

And finally:

```
source activate imputex
```

## Acknowledgements

 * Max Winston
 * Ittai Eres
 * John Novembre
 * Arjun Biddanda 

