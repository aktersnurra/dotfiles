local formatters = require "lsp.null-ls.formatters"
local linters = require "lsp.null-ls.linters"
formatters.setup { { exe = "black", filetypes = { "python" } } }
formatters.setup { { exe = "flake8", filetypes = { "python" } } }
