local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua


return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim'}

  -- Information
  use 'nanotee/nvim-lua-guide'

  -- Quality of life improvements
  use 'norcalli/nvim_utils'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'

  -- Debugging
  use 'mfussenegger/nvim-dap'

  -- Autocomplete
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'
  use 'p00f/nvim-ts-rainbow'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- Status Line and Bufferline
  use 'glepnir/galaxyline.nvim'
  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Color
  use 'aktersnurra/githubsy.vim'
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'norcalli/nvim-colorizer.lua'

  -- Git
  use 'TimUntersberger/neogit'
  use {'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use 'f-person/git-blame.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

  -- Easily Create Gists
  use 'mattn/vim-gist'
  use 'mattn/webapi-vim'

  -- General Plugins
  use 'windwp/nvim-autopairs'
  use 'kevinhwang91/nvim-bqf'
  use 'unblevable/quick-scope'
  use 'airblade/vim-rooter'
  use 'b3nj5m1n/kommentary'
  use 'kevinhwang91/rnvimr'
  use 'mhinz/vim-startify'
  use 'metakirby5/codi.vim'
  use 'psliwka/vim-smoothie'
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
  use 'moll/vim-bbye'
  use 'turbio/bracey.vim'
  use 'AndrewRadev/tagalong.vim'
  use 'alvan/vim-closetag'
  use 'liuchengxu/vim-which-key'
  use 'tpope/vim-sleuth'
  use 'voldikss/vim-floaterm'
  use 'liuchengxu/vista.vim'
  use 'terrortylor/nvim-comment'
  use 'bfredl/nvim-miniyank'
  use 'andymass/vim-matchup'
  use 'phaazon/hop.nvim'
  use 'junegunn/goyo.vim'
  use 'junegunn/limelight.vim'
  use 'vimwiki/vimwiki'
end)
