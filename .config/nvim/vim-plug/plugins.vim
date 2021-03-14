" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Better Comments
    Plug 'tpope/vim-commentary'

    " Highlights yanking 
    Plug 'machakann/vim-highlightedyank'
    
    " Find and replace
    Plug 'brooth/far.vim'
    
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    " Themes
    Plug 'gilgigilgil/anderson.vim'
    Plug 'dylanaraps/wal.vim'
    Plug 'richtan/pywal.vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'chriskempson/base16-vim'
    Plug 'aktersnurra/githubsy.vim'

    " Color hex codes
    Plug 'ap/vim-css-color'

    " Skim fuzzy finder
    Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' } 

    " Rooter changes the working directory to the project root when you open a file or directory.
    Plug 'airblade/vim-rooter'   
    
    " Telescope a fuzzy finder
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'   
    Plug 'nvim-telescope/telescope-media-files.nvim'

    " Better tabline
    Plug 'akinsho/nvim-bufferline.lua'
  
    " Better scrolling
    Plug 'psliwka/vim-smoothie'

    " Terminal
    Plug 'voldikss/vim-floaterm'
    
    " Status line
    Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

    " If you want icons use one of these:
    Plug 'kyazdani42/nvim-web-devicons' " lua
    Plug 'ryanoasis/vim-devicons' " vimscript

    " File explorer
    Plug 'kyazdani42/nvim-tree.lua'

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Snippets
    Plug 'honza/vim-snippets'

    " Ranger
    Plug 'kevinhwang91/rnvimr'
   
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'

    " Startify
    Plug 'mhinz/vim-startify'
    
    " Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    "Sneak
    Plug 'justinmk/vim-sneak'

    " Display available key bindings
    Plug 'liuchengxu/vim-which-key'

    " Zen mode
    Plug 'junegunn/goyo.vim'

    " Rust Lang support
    Plug 'rust-lang/rust.vim'   

    " Text Navigation
    Plug 'unblevable/quick-scope'

    " Intuitive buffer closing
    Plug 'moll/vim-bbye'

    " Python
    " Env
    Plug 'petobens/poet-v'
    " Pydocstring
    Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }

    " Vim wiki for notes
    Plug 'vimwiki/vimwiki'

    " LSP for autocomplete.
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'   
    Plug 'glepnir/lspsaga.nvim'
    Plug 'onsails/lspkind-nvim'
    Plug 'kosayoda/nvim-lightbulb'
    Plug 'mfussenegger/nvim-dap'

call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

