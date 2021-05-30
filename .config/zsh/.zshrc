# ZSH config

# Load plugins first
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins.zsh" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins.zsh"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/functions.zsh" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/functions.zsh"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

zle_highlight=('paste:none')

autoload -U colors && colors

# For autocomplete to work
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# History in cache directory:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.cache/zsh/history

export CLICOLOR=1

# FZF search files
bindkey "ç" fzf-cd-widget

# Search history
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

eval "$(pyenv init -)"
