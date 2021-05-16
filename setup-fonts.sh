#!/bin/bash

apt-get update

export DEBIAN_FRONTEND="noninteractive"
export TZ="Europe/London"


apt-get install -y language-pack-zh*
apt-get install -y chinese*
apt-get install -y git language-pack-zh-hans language-pack-zh-hant xfonts-wqy 
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
apt-get -y install msttcorefonts
apt-get -y install ttf-mscorefonts-installer