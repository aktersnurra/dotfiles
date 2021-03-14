"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" Has to be called first.
source $HOME/.config/nvim/plug-config/polyglot.vim

" General Neovim settings.
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim

" Keybindings.
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim

" Theme
source $HOME/.config/nvim/themes/githubsy.vim

" Vim plugin configs.
source $HOME/.config/nvim/plug-config/far.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/goyo.vim
source $HOME/.config/nvim/plug-config/highlightedyank.vim
source $HOME/.config/nvim/plug-config/lsp-config.vim
source $HOME/.config/nvim/plug-config/lsp-saga.vim
source $HOME/.config/nvim/plug-config/nvimtree.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/poet-v.vim
source $HOME/.config/nvim/plug-config/ranger.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/rust.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/vim-bbye.vim
source $HOME/.config/nvim/plug-config/vim-commentary.vim
source $HOME/.config/nvim/plug-config/vim-pydocstring.vim
source $HOME/.config/nvim/plug-config/vim-rooter.vim
source $HOME/.config/nvim/plug-config/vimwiki.vim

" Lua configs
" Launguage server
luafile $HOME/.config/nvim/lua/lsp/bash.lua
luafile $HOME/.config/nvim/lua/lsp/docker.lua
luafile $HOME/.config/nvim/lua/lsp/general.lua
luafile $HOME/.config/nvim/lua/lsp/lsp-config.lua
luafile $HOME/.config/nvim/lua/lsp/lsp-kind.lua
luafile $HOME/.config/nvim/lua/lsp/lua.lua
luafile $HOME/.config/nvim/lua/lsp/json.lua
luafile $HOME/.config/nvim/lua/lsp/python.lua
luafile $HOME/.config/nvim/lua/lsp/vim.lua
luafile $HOME/.config/nvim/lua/lsp/wrapper.lua
luafile $HOME/.config/nvim/lua/lsp/yaml.lua
" Plugins
luafile $HOME/.config/nvim/lua/bufferline/init.lua
luafile $HOME/.config/nvim/lua/colorizer/init.lua
luafile $HOME/.config/nvim/lua/_compe/init.lua
luafile $HOME/.config/nvim/lua/lightbulb/init.lua
luafile $HOME/.config/nvim/lua/nvimtree/init.lua
luafile $HOME/.config/nvim/lua/galaxyline/init.lua
luafile $HOME/.config/nvim/lua/_telescope/init.lua
luafile $HOME/.config/nvim/lua/treesitter/init.lua

