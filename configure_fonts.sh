#!/usr/bin/env bash

## Install Nerd Fonts

### MesloLG
curl -fLo "/tmp/Meslo.zip" https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Meslo.zip
sudo unzip -o "/tmp/Meslo.zip" -d "/usr/share/fonts/nerd-fonts"

### FiraCode
curl -fLo "/tmp/FiraCode.zip" https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip
sudo unzip -o "/tmp/FiraCode.zip" -d "/usr/share/fonts/nerd-fonts"

## Install New Computer Modern
sudo dnf install -y texlive-newcomputermodern

sudo fc-cache -fv
