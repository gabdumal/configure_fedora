#!/usr/bin/env fish

## Install Python
sudo dnf install python3 -y

## Configure Pip
python3 -m ensurepip
python3 -m pip install --upgrade pip
