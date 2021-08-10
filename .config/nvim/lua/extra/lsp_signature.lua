local M = {}
local Log = require "core.log"

M.config = function()
  local status_ok, lsp_signature = pcall(require, "lsp_signature")
  if not status_ok then
    Log:get_default().error "Failed to load lsp_signature"
    return
  end

  lsp_signature.on_attach()
end

return M
