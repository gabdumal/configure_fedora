#!/usr/bin/env bash

## Set default branch name to `main`.
git config --global init.defaultBranch main

## Set VSCode as the default Git editor.
git config --global core.editor "code --wait"

## Set signing method to SSH.
git config --global gpg.format ssh

## Set Git to sign all commits and tags by default.
git config --global commit.gpgsign true
git config --global tag.gpgsign true

## Create `allowedSigners` file if it doesn't exist.
mkdir -p ~/.config/git
touch ~/.config/git/allowedSigners

## Set the path to the `allowedSigners` file.
git config --global gpg.ssh.allowedSignersFile ~/.config/git/allowedSigners
