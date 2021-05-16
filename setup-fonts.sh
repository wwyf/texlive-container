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
apt-get -y install fonts-noto-cjk

# install adobe fonts
mkdir -p adobefonts
cd adobefonts
wget https://cs.fit.edu/code/projects/ndworld/repository/revisions/12/raw/Resources/Fonts/AdobeSongStd-Light.otf
wget https://cs.fit.edu/code/projects/ndworld/repository/revisions/12/raw/Resources/Fonts/AdobeHeitiStd-Regular.otf
wget https://cs.fit.edu/code/projects/ndworld/repository/revisions/12/raw/Resources/Fonts/AdobeKaitiStd-Regular.otf
wget https://cs.fit.edu/code/projects/ndworld/repository/revisions/11/raw/Resources/Fonts/AdobeFangsongStd-Regular.otf
cd ..
mv adobefonts /usr/share/fonts/
cd /usr/share/fonts/adobefonts
mkfontscale
mkfontdir
fc-cache -fv

# fonts lists
fc-list
