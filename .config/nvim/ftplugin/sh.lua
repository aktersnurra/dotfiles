local formatters = require "lsp.null-ls.formatters"
formatters.setup {
  { exe = "shellcheck", args = { "--sverity", "error" }, filetypes = { "sh" } },
}
