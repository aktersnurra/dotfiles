local M = {}
local Log = require "core.log"

M.config = function()
  local status_ok, numb = pcall(require, "numb")
  if not status_ok then
    Log:get_default().error "Failed to load numb"
    return
  end

  numb.setup {
    show_numbers = true, -- Enable 'number' for the window while peeking
    show_cursorline = true, -- Enable 'cursorline' for the window while peeking
  }
end

return M
