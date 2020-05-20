#!/bin/sh

downloadsPath="$HOME/DownloadsX"

if [ ! -d "$downloadsPath" ] 
then
    echo "Directory $downloadsPath DOES NOT exist, creating..." 
    mkdir $downloadsPath 
    #exit 9999 # die with error code 9999
fi

cd $downloadsPath
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

yay -S google-chrome  nerd-fonts-hack oh-my-zsh-git gotop tmatrix