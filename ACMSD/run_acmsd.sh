#!/bin/bash
DATASET_NAME="CUHK-PEDES"

CUDA_VISIBLE_DEVICES=0 \
python train.py \
--name acmsd\
--img_aug \
--batch_size 64 \
--MLM \
--dataset_name $DATASET_NAME \
--loss_names 'cca+ibd+aia+mlm+id' \
--num_epoch 60