#!/usr/bin/env bash

echo "Instalando curl"
sudo apt-get update && sudo apt-get install -y curl build-essential openssl libssl-dev

echo "Instalando terminator"
sudo apt-get install -y terminator

echo "Instalando vim"
sudo apt-get install -y vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Instalando node.js 8 LTS"
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Instalando zsh y theme"
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Instalando meld y gitk"
sudo apt-get install -y meld gitk

echo "Instalando ubuntu tweak"
wget -qO - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
sudo apt-get update
sudo apt-get install ubuntu-tweak

echo "Instalando theme flatbulous"
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install -y flatabulous-theme ultra-flat-icons

echo "Instalando dock Plank"
sudo apt-get install -y plank

echo "copying dotfiles"
cp -r ./dotfiles/home/. ${HOME}

#change session zsh
sudo chsh -s /bin/zsh