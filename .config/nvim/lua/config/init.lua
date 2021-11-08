local utils = require "utils"
local Log = require "core.log"

local M = {}
local user_config_dir = get_config_dir()
local user_config_file = utils.join_paths(user_config_dir, "config.lua")

local function apply_defaults(configs, defaults)
  configs = configs or {}
  return vim.tbl_deep_extend("keep", configs, defaults)
end

---Get the full path to the user configuration file
---@return string
function M:get_user_config_path()
  return user_config_file
end

--- Initialize nvim default configuration
-- Define options global variable
function M:init()
  if vim.tbl_isempty(nvim or {}) then
    options = require "config.defaults"
    local home_dir = vim.loop.os_homedir()
    options.vsnip_dir = utils.join_paths(home_dir, ".config", "snippets")
    options.database = {
      save_location = utils.join_paths(home_dir, ".config", "lunarvim_db"),
      auto_execute = 1,
    }
  end

  local builtins = require "core.builtins"
  builtins.config { user_config_file = user_config_file }

  local settings = require "config.settings"
  settings.load_options()

  local default_keymaps = require("keymappings").get_defaults()
  options.keys = apply_defaults(options.keys, default_keymaps)

  local autocmds = require "core.autocmds"
  options.autocommands = apply_defaults(options.autocommands, autocmds.load_augroups())

  local lsp_config = require "lsp.config"
  options.lsp = apply_defaults(options.lsp, vim.deepcopy(lsp_config))

  local supported_languages = require "config.supported_languages"
  require("lsp.manager").init_defaults(supported_languages)
end

local function handle_deprecated_settings()
  local function deprecation_notice(setting)
    local in_headless = #vim.api.nvim_list_uis() == 0
    if in_headless then
      return
    end

    local msg = string.format(
      "Deprecation notice: [%s] setting is no longer supported. See https://github.com/LunarVim/LunarVim#breaking-changes",
      setting
    )
    vim.schedule(function()
      Log:warn(msg)
    end)
  end

  for lang, entry in pairs(options.lang) do
    local deprecated_config = entry.formatters or entry.linters or {}
    if not vim.tbl_isempty(deprecated_config) then
      deprecation_notice(string.format("lang.%s", lang))
    end
  end
end

--- Override the configuration with a user provided one
-- @param config_path The path to the configuration overrides
function M:load(config_path)
  local autocmds = require "core.autocmds"
  config_path = config_path or self.get_user_config_path()
  local ok, err = pcall(dofile, config_path)
  if not ok then
    if utils.is_file(user_config_file) then
      Log:warn("Invalid configuration: " .. err)
    else
      Log:warn(string.format("Unable to find configuration file [%s]", config_path))
    end
  end

  handle_deprecated_settings()

  autocmds.define_augroups(options.autocommands)

  vim.g.mapleader = (options.leader == "space" and " ") or options.leader
  require("keymappings").load(options.keys)

  local settings = require "config.settings"
  settings.load_commands()
end

--- Override the configuration with a user provided one
-- @param config_path The path to the configuration overrides
function M:reload()
  local core_modules = {}
  for module, _ in pairs(package.loaded) do
    if module:match "core" then
      package.loaded[module] = nil
      table.insert(core_modules, module)
    end
  end

  M:init()
  M:load()

  local plugins = require "plugins"
  utils.toggle_autoformat()
  local plugin_loader = require "plugin-loader"
  plugin_loader.cache_clear()
  plugin_loader.load { plugins, options.plugins }
  vim.cmd ":PackerInstall"
  vim.cmd ":PackerCompile"
  -- vim.cmd ":PackerClean"
  require("lsp").setup()
  Log:info "Reloaded configuration"
end

return M
