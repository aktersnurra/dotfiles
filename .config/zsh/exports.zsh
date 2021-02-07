# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

zle_highlight=('paste:none')

# Which plugins would you like to load?
plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
)

autoload -U colors && colors

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

# Starship prompt
# eval "$(starship init zsh)"
