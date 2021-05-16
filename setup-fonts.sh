#!/bin/bash

apt-get update
apt-get install -y git language-pack-zh-hans language-pack-zh-hant xfonts-wqy 

echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
apt-get -y install msttcorefonts
DEBIAN_FRONTEND="noninteractive" TZ="Europe/London" apt-get -y install tzdata
apt-get -y install ttf-mscorefonts-installer