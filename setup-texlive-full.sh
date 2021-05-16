#!/bin/bash

wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz

tar xf install-tl-unx.tar.gz
cd install-tl-20*


printf "I\n" | ./install-tl  -no-gui 
# ./install-tl  -no-gui --location https://mirrors.matrix.moe/CTAN/systems/texlive/tlnet/
# 输入I，开始安装
