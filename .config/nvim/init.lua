require "default-config"
require "keymappings"
vim.cmd("luafile " .. CONFIG_PATH .. "/config.lua")
require "settings"
require "plugins"
require "cfg.utils"
require "cfg.treesitter"
if O.plugin.dashboard.active then
  require("cfg.dashboard").config()
end
