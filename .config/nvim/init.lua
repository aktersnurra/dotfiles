require "default-config"
require "keymappings"
vim.cmd("luafile " .. CONFIG_PATH .. "/config.lua")
require "settings"
require "plugins"
require "cfg.utils"
require "cfg.galaxyline"
require "cfg.treesitter"
require "cfg.which-key"
require "cfg.neoformat"
if O.plugin.dashboard.active then
  require("cfg.dashboard").config()
end
