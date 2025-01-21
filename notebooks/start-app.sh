#!/bin/bash
ENV_NAME="${1:-i9}"
source activate base
conda env create -n $ENV_NAME
conda activate $ENV_NAME