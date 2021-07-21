vim.api.nvim_set_keymap('n', 's', ":HopChar2<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'S', ":HopWord<cr>", { noremap = true, silent = true })

local M = {}

M.config = function()
  O.plugin.hop = {
    active = false,
  }
end

M.setup = function()
  local status_ok, hop = pcall(require, "hop")
  if not status_ok then
    return
  end
  hop.setup(O.plugin.hop)
end

return M
