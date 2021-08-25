local M = {}

M.config = function()
  options.builtin.bufferline = {
    active = true,
    on_config_done = nil,
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

  if options.builtin.bufferline.on_config_done then
    options.builtin.bufferline.on_config_done()
  end
end

return M
