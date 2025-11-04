#!/usr/bin/env fish

## Install PNPM.
curl -fsSL https://get.pnpm.io/install.sh | sh -

## Add PNPM initialization to Fish.
printf '%s\n' 'export PNPM_HOME="^/.local/share/pnpm"' 'case ":$PATH:" in' '  *":$PNPM_HOME:"*) ;;' '  *) export PATH="$PNPM_HOME:$PATH" ;;' 'esac' > ~/.bashrc.d/pnpm.sh

## Use the latest LTS version of Node.js with PNPM.
pnpm env use --global lts
