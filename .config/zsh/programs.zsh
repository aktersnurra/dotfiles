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

if ! command -v ytop > /dev/null; then
  echo "install ytop"
fi

