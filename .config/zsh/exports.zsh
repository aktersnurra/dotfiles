# Adds `~/.local/bin` to $PATH
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

zle_highlight=('paste:none')

autoload -U colors && colors

# For autocomplete to work
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

export CLICOLOR=1

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
PATH=$(pyenv root)/shims:$PATH
eval "$(pyenv init -)"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

export GEM_HOME="$HOME/.gem"

# Created by `pipx` on 2021-03-01 21:32:03
export PATH="$PATH:/home/aktersnurra/.local/bin"

export BROWSER=brave
export TERMINAL=alacritty
