" Prevents the colorscheme from loading a custom bg color.
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE 
" syntax on
colorscheme githubsy


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    set t_Co=256
    hi LineNr ctermbg=NONE guibg=NONE
endif
