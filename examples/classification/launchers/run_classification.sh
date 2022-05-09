#!/bin/sh
# bash classification/launchers/run_classification.sh
CUDA_VISIBLE_DEVICES=0 python -m classification.run_wrapper \
  --output_dir "/mnt/disks/disk-2/dump/classification/test" \
  --task_name "sst-2" \
  --model_name_or_path "distilroberta-base" \
  --few_shot_type "prompt" \
  --attention_only "no" \
  --static_lm_head "no" \
  --static_embedding "no" \
  --per_device_train_batch_size 25 \
  --batch_size 25 \
  --eval_spectrum "no" \
  --non_private "yes" \
  --eval_steps 50 \
  --max_spectrum_batches 400 \
  --max_lanczos_iter 100 \
  --randomly_initialize "yes" \
  --learning_rate 5e-5
