local home_dir = vim.loop.os_homedir()
local M = {
  path = string.format("%s/.config/nvim/config.lua", home_dir),
}

--- Initialize nvim default configuration
-- Define nvim global variable
function M:init()
  local utils = require "utils"

  require "config.defaults"

  local builtins = require "core.builtins"
  builtins.config(self)

  local settings = require "config.settings"
  settings.load_options()
end

--- Override the configuration with a user provided one
-- @param config_path The path to the configuration overrides
function M:load(config_path)
  local autocmds = require "core.autocmds"
  config_path = config_path or self.path
  local ok, err = pcall(vim.cmd, "luafile " .. config_path)
  if not ok then
    print("Invalid configuration", config_path)
    print(err)
    return
  end

  self.path = config_path

  autocmds.define_augroups(options.autocommands)

  local settings = require "config.settings"
  settings.load_commands()
end

return M
