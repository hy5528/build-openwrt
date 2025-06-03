#!/bin/bash

# 更新软件包
sudo apt-get update



# 清理缓存
apt autoremove -y && apt autoclean && apt remove -y && apt clean

