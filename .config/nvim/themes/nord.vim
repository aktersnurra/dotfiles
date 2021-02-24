" Prevents the colorscheme from loading a custom bg color.
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE


hi Comment cterm=italic

syntax on
colorscheme nord

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
