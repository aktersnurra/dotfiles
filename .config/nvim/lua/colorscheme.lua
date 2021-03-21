vim.api.nvim_command([[
    augroup ChangeBackgroudColour
        autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE 
    augroup END
]])
vim.cmd('colorscheme githubsy')
-- vim.cmd('let g:nvcode_termcolors=256')
