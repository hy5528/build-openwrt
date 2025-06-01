#!/bin/bash

# 更新软件包
sudo apt-get update

# 安装 Docker
sudo apt-get install -y ca-certificates curl gnupg lsb-release alsa-utils 
curl -fsSL https://get.docker.com -o get-docker.sh
sudo systemctl start docker

# 清理缓存
apt autoremove -y && apt autoclean && apt remove -y && apt clean

