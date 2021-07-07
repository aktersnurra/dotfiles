# Neovim

Most of my config is stolen from https://github.com/ChristianChiarulli/LunarVim

## Requirements
Must have neovim >= 0.5

### Programs

```
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
