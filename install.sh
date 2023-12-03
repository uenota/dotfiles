#!/bin/sh

set -eu
set -eo pipefail

ln -s $PWD/.zshrc $HOME/.zshrc
ln -s $PWD/.vimrc $HOME/.vimrc

# create symlink for fish configs
ln -s $PWD/.config/fish/config.fish $HOME/.config/fish/config.fish
ln -s $PWD/.config/fish/functions/fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish
