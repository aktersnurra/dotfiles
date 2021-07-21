-- vim.opt.rtp:append() instead of vim.cmd ?
require "default-config"
local status_ok, error = pcall(vim.cmd, "luafile ~/.config/nvim/config.lua")
if not status_ok then
  print "something is wrong with your config"
  print(error)
end

require "keymappings"

local plugins = require "plugins"
local plugin_loader = require("plugin-loader").init()
plugin_loader:load { plugins, O.user_plugins }
vim.g.colors_name = O.colorscheme -- Colorscheme must get called after plugins are loaded or it will break new installs.

require "settings"
require "utils"
