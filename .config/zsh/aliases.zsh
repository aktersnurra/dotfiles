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
  alias ls='exa -al --color=always --group-directories-first' # my preferred listing
  alias la='exa -a --color=always --group-directories-first'  # all files and dirs
  alias ll='exa -l --color=always --group-directories-first'  # long format
  alias lt='exa -aT --color=always --group-directories-first' # tree listing
  alias l.='exa -a | egrep "^\."'
else
  echo "install exa"
fi

if command -v bat > /dev/null; then
  alias cat='bat'
else
  echo "install bat"
fi

if command -v rg > /dev/null; then
  alias grep='rg'
else
  echo "install ripgrep"
fi

if command -v fd > /dev/null; then
  alias find='fd'
else
  echo "install fd"
fi


if ! command -v tokei > /dev/null; then
  echo "install tokei"
fi


if command -v procs > /dev/null; then
  alias ps='procs'
else
  echo "install procs"
fi

