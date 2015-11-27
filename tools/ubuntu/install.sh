#!/bin/bash

## Install man packages

sudo apt-get install nodejs git ruby-full vim zsh curl wget 

## Install NPM packages

sudo npm install -g grunt grunt-cli gulp bower

## Install Ruby gems

sudo gem install compass

## Oh My Zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s `which zsh` 

