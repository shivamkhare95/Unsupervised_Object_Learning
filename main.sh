# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
#!/bin/bash

DIR="./toys_data_sample"
ARCH="alexnet"
LR=0.05
WD=-5
K=20
WORKERS=1
EPOCHS=50
EXP="/home/skhare31/deep_cluster/cop_kmeans_clustering"

mkdir -p ${EXP}

CUDA_VISIBLE_DEVICES=2 python main.py ${DIR} --exp ${EXP} --arch ${ARCH} --clustering COPKMeans\
  --lr ${LR} --wd ${WD} --k ${K} --epochs ${EPOCHS} --verbose --workers ${WORKERS}
