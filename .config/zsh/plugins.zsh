autoload -Uz compinit
compinit

# Poetry autocompletion
fpath+=~/.zfunc

# kubectl autocompletion
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

# FZF
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Antigen
source $HOME/.config/zsh/antigen.zsh

# Load Packages
antigen bundle tmux
antigen bundle git
antigen bundle pip
# antigen bundle kubectl
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
antigen bundle zsh-users/zsh-autosuggestions

# Done
antigen apply
