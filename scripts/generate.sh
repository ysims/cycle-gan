#!/bin/sh

# generate.sh [GPU_ID] [NAME] [DATAROOT]
    # GPU_ID : ID of GPU. -1 for CPU.
    # NAME : name of this training
    # DATAROOT : path to the folder with data folders

if [ -z $1 ]; then GPU_ID=0; else GPU_ID=$1; fi
if [ -z $2 ]; then NAME=soccer_base; else NAME=$2; fi
if [ -z $3 ]; then DATAROOT=./datasets/soccer; else DATAROOT=$3; fi

python3 generate.py \
 --gpu_ids "${GPU_ID}" \
 --dataroot "${DATAROOT}" \
 --name "${NAME}" \
 --model_suffix _A \
 --no_dropout \
 --phase generate \
 --aspect_ratio 1.25 \
 --crop_size 1024 \
 --load_size 1024