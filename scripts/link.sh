#!/bin/sh

dotfiles_root=$(cd $(dirname $0)/.. && pwd)
cd ${dotfiles_root}/dotfiles
for file in .*; do
    ln -s ${PWD}/${file} ${HOME}
done

# create symlink for fish configs
ln -s ${dotfiles_root}/fish/config.fish ${HOME}/.config/fish/config.fish
ln -s ${dotfiles_root}/fish/functions/fish_prompt.fish ${HOME}/.config/fish/functions/fish_prompt.fish
