local formatters = require "lsp.null-ls.formatters"
formatters.setup { { exe = "stylua", filetypes = { "lua" } } }
