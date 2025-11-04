#!/usr/bin/env fish

## Install FZF
sudo dnf install fzf -y

## Install Zoxide
sudo dnf install zoxide -y

## Add Zoxide initialization to Fish.
printf '%s\n' 'if status is-interactive' '    zoxide init fish --cmd cd | source' 'end' > ~/.config/fish/conf.d/zoxide.fish
