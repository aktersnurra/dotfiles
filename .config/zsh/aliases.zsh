alias lg='lazygit'
alias gpu_watch="watch -n -1 nvidia-smi"
alias zshconfig="nvim ~/.zshrc"
alias gp='git add . && git commit -m "auto push" && git push'
alias zrc='nvim ~/.zshrc'
alias zsource='source ~/.zshrc'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

if command -v exa > /dev/null; then
  alias ls='exa -l'
else
  echo "install exa"
fi
