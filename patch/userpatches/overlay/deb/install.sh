#!/bin/bash

ARCH=$(uname -m)
MACHINE=$(uname -o -s -r -m)
PYVER=$(python3 -V)
CURRENTWD=$PWD
FIND_FILE="/etc/sudoers"
FIND_STR="short_press_gpio420"

#安装deb
install-deb(){
  echo "正在安装deb......"  
  dpkg -i ./linux-headers-current-onecloud.deb
}

