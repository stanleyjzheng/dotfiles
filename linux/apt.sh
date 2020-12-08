#!/bin/bash
echo installing, make sure this is run with sudo
apt -qq update 

for program in fonts-powerline imwheel neofetch git gnome-tweak-tool adb alacritty code atom texlive-full pdftk lm-sensors micro obs-studio sl tmux v4l2loopback-dkms vlc zsh libcurl4-gnutls-dev
do 
    echo installing $program
    apt -qq --yes --force-yes install $program 
    echo finished installing $program
done
