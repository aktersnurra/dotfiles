" Prevents the colorscheme from loading a custom bg color.
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE

hi Comment cterm=italic

syntax on
set background=dark
colorscheme base16-classic-dark

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    let base16colorspace=256  " Access colors present in 256 colorspace
    let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
    hi SignColumn ctermbg=NONE guibg=NONE
endif
