-- O is the global options object

-- general
O.auto_complete = true
O.relative_number = true
O.colorscheme = 'dark'
O.timeoutlen = 100
O.leader_key = ' '

-- After changing plugin config it is recommended to run :PackerCompile
O.plugin.colorizer.active = true
O.plugin.dashboard.active = true
O.plugin.diffview.active = true
O.plugin.hop.active = true
O.plugin.indent_line.active = true
O.plugin.lush.active = true
O.plugin.sanegx.active = false
O.plugin.symbol_outline.active = false
O.plugin.telescope_fzy.active = true
O.plugin.trouble.active = true
O.plugin.ts_autotag.active = true
O.plugin.zen.active = true
O.plugin.vim_rooter.active = true

-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = "all"
O.treesitter.ignore_install = {"haskell"}
O.treesitter.highlight.enabled = true

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
