require("bootstrap"):init()
require("config"):load()

local plugins = require "plugins"
require("plugin-loader"):load { plugins, options.plugins }

local Log = require "core.log"
Log:debug "Starting nvim"

vim.g.colors_name = options.colorscheme -- Colorscheme must get called after plugins are loaded or it will break new installs.
vim.cmd("colorscheme " .. options.colorscheme)

local commands = require "core.commands"
commands.load(commands.defaults)

require("keymappings").setup()

require("lsp").setup()
