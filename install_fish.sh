#!/usr/bin/env bash

## Install Fish shell
sudo dnf install fish -y

## Disable the greeting message in Fish.
mkdir -p ~/.config/fish/conf.d
printf '%s\n' 'set -g fish_greeting ""' > ~/.config/fish/conf.d/greeting.fish
