#!/usr/bin/env bash
# @Author: bo.shi
# @Date:   2019-11-04 09:56:36
# @Last Modified by:   bo.shi
# @Last Modified time: 2019-12-05 11:23:30

TASK_NAME="ner"
MODEL_NAME="RoBERTa-tiny-clue"
CURRENT_DIR=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
export CUDA_VISIBLE_DEVICES="0"
export PRETRAINED_MODELS_DIR=$CURRENT_DIR/prev_trained_models
export ROBERTA_CLUE_DIR=$PRETRAINED_MODELS_DIR/$MODEL_NAME
export CLUE_DATA_DIR=$CURRENT_DIR/../../CLUEdataset

# download and unzip dataset
if [ ! -d $CLUE_DATA_DIR ]; then
  mkdir -p $CLUE_DATA_DIR
  echo "makedir $CLUE_DATA_DIR"
fi
cd $CLUE_DATA_DIR
if [ ! -d $TASK_NAME ]; then
  mkdir $TASK_NAME
  echo "makedir $CLUE_DATA_DIR/$TASK_NAME"
fi
cd $TASK_NAME
if [ ! -f "train.json" ] || [ ! -f "dev.json" ] || [ ! -f "test.json" ]; then
  rm *
  wget https://storage.googleapis.com/cluebenchmark/tasks/cluener_public.zip
  unzip cluener_public.zip
  rm cluener_public.zip
else
  echo "data exists"
fi
echo "Finish download dataset."

# download model
if [ ! -d $ROBERTA_CLUE_DIR ]; then
  mkdir -p $ROBERTA_CLUE_DIR
  echo "makedir $ROBERTA_CLUE_DIR"
fi
cd $ROBERTA_CLUE_DIR
if [ ! -f "bert_config.json" ] || [ ! -f "vocab.txt" ] || [ ! -f "bert_model.ckpt.index" ] || [ ! -f "bert_model.ckpt.meta" ] || [ ! -f "bert_model.ckpt.data-00000-of-00001" ]; then
  rm *
  wget -c https://storage.googleapis.com/cluebenchmark/pretrained_models/RoBERTa-tiny-clue.zip
  unzip RoBERTa-tiny-clue.zip
  rm RoBERTa-tiny-clue.zip
else
  echo "model exists"
fi
echo "Finish download model."

# run task
cd $CURRENT_DIR
echo "Start running..."

python run_classifier_ner.py \
  --task_name=$TASK_NAME \
  --do_train=False \
  --do_predict=True \
  --data_dir=$CLUE_DATA_DIR/$TASK_NAME \
  --vocab_file=$ROBERTA_CLUE_DIR/vocab.txt \
  --bert_config_file=$ROBERTA_CLUE_DIR/bert_config.json \
  --init_checkpoint=$ROBERTA_CLUE_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=32 \
  --learning_rate=2e-5 \
  --num_train_epochs=4.0 \
  --output_dir=$CURRENT_DIR/${TASK_NAME}_output
