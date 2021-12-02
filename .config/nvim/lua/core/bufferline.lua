local M = {}

M.config = function()
  options.builtin.bufferline = {
    active = true,
    on_config_done = nil,
    keymap = {
      normal_mode = {},
    },
  }
end

M.setup = function()
  require("keymappings").load(options.builtin.bufferline.keymap)

  if options.builtin.bufferline.on_config_done then
    options.builtin.bufferline.on_config_done()
  end
end

return M
