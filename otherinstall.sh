#!/bin/bash

# spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
apt update
apt -q --yes --force-yes install spotify-client
# spotify hack
git clone https://github.com/abba23/spotify-adblock-linux.git
cd spotify-adblock-linux
wget -O cef.tar.bz2 http://opensource.spotify.com/cefbuilds/cef_binary_80.0.8%2Bgf96cd1d%2Bchromium-80.0.3987.132_linux64_minimal.tar.bz2
tar -xf cef.tar.bz2 --wildcards '*/include' --strip-components=1
make
make install
rm -rf spotify-adblock-linux

# discord
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -qq -i discord.deb 
rm -f discord.deb 

# powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts 
./install.sh
cd .. 
rm -rf fonts

# heroku cli
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh

# kite autocomplete
bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"

# anaconda
wget -O anaconda.sh "https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh"
chmod 777 anaconda sh && ./anaconda.sh 
rm -f anaconda.sh

# zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# droidcam
cd /tmp/
wget https://files.dev47apps.net/linux/droidcam_latest.zip
unzip droidcam_latest.zip -d droidcam
cd droidcam && sudo ./install-client && sudo ./install-video
