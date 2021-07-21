-- O is the global options object

-- general
O.format_on_save = true
O.lint_on_save = true
O.completion.autocomplete = true
O.auto_complete = true
O.colorscheme = 'dark'
O.default_options.wrap = false
O.default_options.timeoutlen = 100
O.default_options.relativenumber = true

-- After changing plugin config it is recommended to run :PackerCompile
O.plugin.colorizer.active = true
O.plugin.dashboard.active = true
O.plugin.hop.active = true
O.plugin.zen.active = true
O.plugin.terminal.active = true
O.plugin.rooter.active = true

-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = "all"
O.treesitter.ignore_install = {"haskell"}
O.treesitter.highlight.enabled = true

-- LSP
O.lsp.diagnostics.virtual_text = false

-- lua
O.lang.lua.autoformat = true
O.lang.lua.formatter = 'lua-format'

-- python
O.lang.python.formatter = 'black'
O.lang.python.linter = 'flake8'
O.lang.python.isort = true
O.lang.python.autoformat = true
O.lang.python.diagnostics.virtual_text = true
O.lang.python.diagnostics.signs = true
O.lang.python.diagnostics.underline = true

-- rust
O.lang.rust.rust_tools.active = true

-- go
O.lang.go.autoformat = true

-- json
O.lang.json.autoformat = true
O.lang.json.formatter = 'prettier'

-- sh
O.lang.sh.linter = 'shellcheck'
O.lang.sh.formatter = 'shfmt'
