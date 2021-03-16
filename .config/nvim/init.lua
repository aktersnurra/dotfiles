-- General mappings
require('plugins')
require('mappings')
require('settings')
require('colorscheme')

-- Plugins
require('_compe')
require('_telescope')
require('_autopairs')
require('_closetag')
require('_colorizer')
require('_floaterm')
require('_gitblame')
require('_gitsigns')
require('_hop')
require('_kommentary')
-- require('_limeligth')
require('_neogit')
require('_nvimtree')
require('_quickscope')
require('_rnvimr')
require('_startify')
-- require('_treesitter')
require('_vim-rooter')

-- bufferline and statusline
require('_galaxyline')
require('_bufferline')

-- Load vim scripts
-- Which Key (Hope to replace with Lua plugin someday)
vim.cmd('source ~/.config/nvim/lua/_goyo/init.vim')
vim.cmd('source ~/.config/nvim/lua/_vim-bbye/init.vim')
vim.cmd('source ~/.config/nvim/lua/_whichkey/init.vim')

-- LSP
require('_lspkind')
require('_lsp')
require('utils')
require('_lsp.bash-ls')
require('_lsp.docker-ls')
require('_lsp.lua-ls')
require('_lsp.json-ls')
require('_lsp.python-ls')
require('_lsp.yaml-ls')
