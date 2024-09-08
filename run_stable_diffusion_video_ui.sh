#!/bin/bash

# Activate the virtual environment
source .pt2/bin/activate

# Set Python path to current directory
export PYTHONPATH=$(pwd)

# uncomment the line below and set to match your GPU number if you have multiple CUDA devices
# export CUDA_VISIBLE_DEVICES=1

# set max split size to help out with OOM's
export PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:128

# Run the Streamlit app for video generation
streamlit run scripts/demo/video_sampling.py --server.port 8501

