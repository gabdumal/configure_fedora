#!/usr/bin/env fish

## Install Starship
sudo curl -sS https://starship.rs/install.sh | sh

## Add Starship initialization to Fish.
printf '%s\n' 'if status is-interactive' '    starship init fish | source' 'end' > ~/.config/fish/conf.d/starship.fish

## Copy the Starship configuration file.
mkdir -p ~/.config
cp ./starship.toml ~/.config/starship.toml
