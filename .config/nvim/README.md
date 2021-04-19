# Neovim

Most of my config is stolen from https://github.com/ChristianChiarulli/LunarVim

## Requirements
Must have neovim >= 0.5

## Installation

### Lazy git
macOS:
```
brew install lazygit
```

Arch:
```
https://aur.archlinux.org/packages/lazygit/
```

### Ranger
```
pip3 install ranger-fm pynvim
```

### fzf

macOS:

`brew install fzf`

`sudo apt install fzf`

`sudo pacman -S fzf`

### Treesitter

`:TSInstall {language}`

### LSP

```
  :LspInstall <your_language_server>
```

### Programs

```
ranger
ueberzug
ripgrep
pynvim
neovim-remote
```

### EFM server
Need to install `efm-langserver` for linters and formatters to work.

```
:LspInstall efm

```

### Formatters and Linters
*Python*
```
black
flake8
```

*Lua*
`luarocks install --server=https://luarocks.org/dev luaformatter`

*Yaml, json, js, html, css*
`npm install -g prettier`
