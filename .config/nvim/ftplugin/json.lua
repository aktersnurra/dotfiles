local formatters = require "lsp.null-ls.formatters"
formatters.setup { { exe = "prettier", filetypes = { "json" } } }
