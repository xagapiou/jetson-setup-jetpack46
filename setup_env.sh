#!/bin/bash
# Fast setup for JetPack 4.6 / Python 3.6
echo "Starting Jetson Environment Setup..."

# 1. System dependencies
sudo apt-get update
sudo apt-get install -y libopenblas-base libopenmpi-dev libjpeg-dev zlib1g-dev \
     python3-matplotlib python3-numpy python3-scipy python3-pandas

# 2. Install Python requirements
pip3 install -r requirements_jetson_jp46.txt

# 3. Reminder for PyTorch
echo "--------------------------------------------------------"
echo "Setup Complete!"
echo "Next: Install your saved PyTorch and Torchvision wheels."
echo "--------------------------------------------------------"
