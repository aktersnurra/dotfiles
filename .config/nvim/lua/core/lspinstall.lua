local M = {}

M.config = function()
  options.builtin.lspinstall = {
    active = true,
    on_config_done = nil,
  }
end

M.setup = function()
  local lspinstall = require "lspinstall"
  lspinstall.setup()

  if options.builtin.lspinstall.on_config_done then
    options.builtin.lspinstall.on_config_done(lspinstall)
  end
end

return M
