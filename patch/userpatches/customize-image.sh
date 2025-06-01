#!/bin/bash
# 备份原有的sources.list文件
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
 
# 更新sources.list文件
sudo tee /etc/apt/sources.list <<EOF
deb https://mirrors.163.com/debian/ bookworm main non-free non-free-firmware contrib
deb-src https://mirrors.163.com/debian/ bookworm main non-free non-free-firmware contrib
deb https://mirrors.163.com/debian-security/ bookworm-security main
deb-src https://mirrors.163.com/debian-security/ bookworm-security main
deb https://mirrors.163.com/debian/ bookworm-updates main non-free non-free-firmware contrib
deb-src https://mirrors.163.com/debian/ bookworm-updates main non-free non-free-firmware contrib
deb https://mirrors.163.com/debian/ bookworm-backports main non-free non-free-firmware contrib
deb-src https://mirrors.163.com/debian/ bookworm-backports main non-free non-free-firmware contrib
EOF
# 更新软件包
sudo apt-get update
sudo apt dist-upgrade -y

# 安装 Docker
sudo apt-get install -y ca-certificates curl gnupg lsb-release alsa-utils 
curl -fsSL https://get.docker.com -o get-docker.sh
sudo systemctl start docker

# 清理缓存
apt autoremove -y && apt autoclean && apt remove -y && apt clean

