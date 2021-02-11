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
    
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    " Themse
    Plug 'joshdick/onedark.vim'
    Plug 'agreco/vim-citylights'
    Plug 'gilgigilgil/anderson.vim'
    Plug 'wadackel/vim-dogrun'
    Plug 'synul/githubsy'
    Plug 'dylanaraps/wal.vim'
    Plug 'richtan/pywal.vim'

    Plug 'ap/vim-css-color'

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'   
    
    " Better tabline
    Plug 'romgrk/barbar.nvim'
    
    " Terminal
    Plug 'voldikss/vim-floaterm'
    
    " Status line
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
    " Vista
    Plug 'liuchengxu/vista.vim'   

    " If you want icons use one of these:
    Plug 'kyazdani42/nvim-web-devicons' " lua
    Plug 'ryanoasis/vim-devicons' " vimscript
    Plug 'kyazdani42/nvim-tree.lua'
    
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

