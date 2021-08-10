local M = {}

M.config = function()
  options.builtin.bufferline = {
    active = true,
    keymap = {
      normal_mode = {
        ["<S-l>"] = ":BufferNext<CR>",
        ["<S-h>"] = ":BufferPrevious<CR>",
      },
    },
  }
end

M.setup = function()
  local keymap = require "keymappings"
  keymap.append_to_defaults(options.builtin.bufferline.keymap)
end

return M
