#!/bin/bash

set -eu
set -eo pipefail

ln -sf $PWD/.zshrc $HOME/.zshrc
ln -sf $PWD/.vimrc $HOME/.vimrc

# create symlink for fish configs
ln -sf $PWD/.config/fish/config.fish $HOME/.config/fish/config.fish
ln -sf $PWD/.config/fish/functions/fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish
