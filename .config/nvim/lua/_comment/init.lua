require('nvim_comment').setup()
vim.api.nvim_set_keymap("n", "gc", ":CommentToggle<CR>", {noremap=true, silent = true})
vim.api.nvim_set_keymap("v", "gc", ":CommentToggle<CR>", {noremap=true, silent = true})
