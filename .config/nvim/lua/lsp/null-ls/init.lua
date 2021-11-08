local M = {}

local Log = require "core.log"

function M:setup()
  local status_ok, null_ls = pcall(require, "null-ls")
  if not status_ok then
    Log:error "Missing null-ls dependency"
    return
  end

  null_ls.config()
  local default_opts = require("lsp").get_common_opts()

  if vim.tbl_isempty(options.lsp.null_ls.setup or {}) then
    options.lsp.null_ls.setup = default_opts
  end

  require("lspconfig")["null-ls"].setup(options.lsp.null_ls.setup)
end

return M
