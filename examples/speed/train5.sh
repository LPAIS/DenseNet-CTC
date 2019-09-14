#!/bin/bash
GPU_ID=0
phase=train
cur_date=`date +%Y-%m-%d-%H-%M-%S`
log_file_name=./examples/speed/log/${cur_date}_${GPU_ID}_${phase}
./build/tools/caffe train \
    -solver ./examples/speed/solver5.prototxt \
    -gpu $GPU_ID 2>&1 | tee -a ${log_file_name}
