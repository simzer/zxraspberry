#!/bin/bash

# Fuse without gtk from source:
apt-get instal libspectrum-dev libspectrum8
apt-get instal libsdl1.2-dev libaudiofile-dev
mkdir ~/tmp/fuse
cd ~/tmp/fuse
wget http://sourceforge.net/projects/fuse-emulator/files/fuse/1.0.0.1a/fuse-1.0.0.1a.tar.gz
tar xf fuse-1.0.0.1a.tar.gz
cd fuse-1.0.0.1a
./configure --with-sdl
make 
make install
perl -i -pe 's/^.*framebuffer_width=\d*/framebuffer_width=640/' /boot/config.txt
perl -i -pe 's/^.*framebuffer_height=\d*/framebuffer_height=480/' /boot/config.txt
# run fuse: $ sudo fuse -g 2x

# ZX themes:
wget www.urbanfonts.com/download.php?file=zx81.zip
unzip download.php\?file\=zx81.zip 
mkdir /usr/share/fonts/truetype/zx
cp zx*.ttf /usr/share/fonts/truetype/zx/
chown root /usr/share/fonts/truetype/zx/*.ttf
mkfontdir /usr/share/fonts/truetype/zx
cp -R ../config/lxterminal ~/.config

