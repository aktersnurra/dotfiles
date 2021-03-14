" Prevents the colorscheme from loading a custom bg color.
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE


syntax on
colorscheme hogwarts

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
