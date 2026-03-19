# Jetson JP4.6 Survival Kit 🚀

This repository contains a collection of pre-verified requirements, installation scripts, and compiled wheels for **NVIDIA Jetson** devices running **JetPack 4.6 (L4T 32.x)**.

## 📋 Environment Specs
* **OS:** Ubuntu 18.04 LTS
* **Python:** 3.6.9 (Default)
* **JetPack:** 4.6.x
* **Architecture:** ARM64 (aarch64)

---

## 🛠️ Quick Setup Guide

### 1. Increase Swap Space (CRITICAL)
Before compiling heavy libraries like Torchvision or running Deep Learning models, ensure you have at least 4GB of Swap memory to prevent system freezes.
```bash
# Example to create 4G swap
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
```
### 2. Install System Dependencies
Run the included setup script to install optimized system libraries and Python 3.6 compatible requirements:
```bash
# Make the script executable
chmod +x setup_env.sh

# Run the installer
./setup_env.sh
```

### 3. Install PyTorch 1.10.0 (GPU Accelerated)
Standard pip install torch will not work on Jetson. Use the NVIDIA-optimized wheel for Python 3.6:
```bash
# Download the verified v1.10.0 wheel
wget https://nvidia.box.com/shared/static/fjtbno0vpo676a25cgvuqc1wty0fkkg6.whl -O torch-1.10.0-cp36-cp36m-linux_aarch64.whl

# Install the wheel
pip3 install torch-1.10.0-cp36-cp36m-linux_aarch64.whl
```

### 4. Install Torchvision v0.11.1
To avoid the 20-minute compilation process, install the pre-compiled wheel from the wheels/ directory of this repository:

```bash
# Install from this repo's wheels folder
pip3 install wheels/torchvision-0.11.1-cp36-cp36m-linux_aarch64.whl
```

