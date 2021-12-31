autoload -Uz colors && colors
autoload -Uz compinit && compinit

# VCS state for prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{blue}%c%u[%b]%f%f"
zstyle ':vcs_info:*' actionformats "%F{cyan}[%s|%a]%f"

# alias
alias ll="ls -l"
alias la="ls -a"

# prompt settings
PROMPT="[%t] %F{green}%n@%m%f %F{magenta}%2c%f \$vcs_info_msg_0_
%F{blue}%#%f "

# local settings like environment variables
if [ -f $HOME/.zsh_local_env ]; then
    source $HOME/.zsh_local_env
fi
