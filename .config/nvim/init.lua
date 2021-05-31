require('globals')
require('plugins')
vim.cmd('luafile '..CONFIG_PATH..'/language-settings.lua')
require('settings')
require('_utils')
require('mappings')

require('_autopairs')
require('_autocommands')

require('_gitblame')
require('_gitsigns')

require('_nvimtree')
require('colorscheme')

require('_galaxyline')

require('_hop')

require('_comment')
require('_colorizer')
require('_compe')

require('_barbar')

require('_dashboard')

require('_telescope')
require('_treesitter')

require('_rnvimr')
require('_quickscope')
require('_which-key')

require('_lsp-rooter')
require('_true-zen')

vim.cmd('source ~/.config/nvim/vim-script/functions.vim')

-- LSP
require('lsp')
require('lsp.clangd')
require('lsp.lua-ls')
require('lsp.bash-ls')
require('lsp.go-ls')
require('lsp.python-ls')
require('lsp.rust-ls')
require('lsp.json-ls')
require('lsp.yaml-ls')
require('lsp.vim-ls')
require('lsp.docker-ls')
require('lsp.emmet-ls')
require('lsp.efm-general-ls')
