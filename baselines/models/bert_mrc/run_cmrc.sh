#!/bin/bash
#########################################################################
# File Name: run.sh
# Author: Junyi Li
# Personal page: dukeenglish.github.io
# Created Time: 21:36:42 2020-03-30
#########################################################################
PATH_TO_BERT=../bert_wsc_csl/prev_trained_models/RoBERTa-tiny-clue

DATA_DIR=../..//CLUEdataset/cmrc

MODEL_DIR=.


python run_cmrc2018_drcd_baseline.py \
    --vocab_file=${PATH_TO_BERT}/vocab.txt \
    --bert_config_file=${PATH_TO_BERT}/bert_config.json \
    --init_checkpoint=${PATH_TO_BERT}/bert_model.ckpt \
    --do_train=True \
    --train_file=${DATA_DIR}/train.json \
    --do_predict=True \
    --predict_file=${DATA_DIR}/test.json \
    --train_batch_size=32 \
    --num_train_epochs=2 \
    --max_seq_length=512 \
    --doc_stride=128 \
    --learning_rate=3e-5 \
    --save_checkpoints_steps=1000 \
    --output_dir=${MODEL_DIR} \
    --do_lower_case=False \
    --use_tpu=False
