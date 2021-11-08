local M = {}

local uv = vim.loop

---Join path segments that were passed as input
---@return string
function _G.join_paths(...)
  local path_sep = "/"
  local result = table.concat({ ... }, path_sep)
  return result
end

---Get the full path to `$LUNARVIM_RUNTIME_DIR`
---@return string
function _G.get_runtime_dir()
  -- when nvim is used directly
  return vim.fn.stdpath "config"
end

---Get the full path to `$LUNARVIM_CONFIG_DIR`
---@return string
function _G.get_config_dir()
  return vim.fn.stdpath "config"
end

function _G.get_data_dir()
  return vim.fn.stdpath "data"
end

---Get the full path to `$LUNARVIM_CACHE_DIR`
---@return string
function _G.get_cache_dir()
  return vim.fn.stdpath "cache"
end

---Initialize the `&runtimepath` variables and prepare for startup
---@return table
function M:init()
  self.runtime_dir = get_runtime_dir()
  self.config_dir = get_config_dir()
  self.cache_path = get_cache_dir()
  self.data_dir = get_data_dir()
  self.repo_dir = join_paths(self.runtime_dir, "nvim")

  self.pack_dir = join_paths(self.data_dir, "site", "pack")
  self.packer_install_dir = join_paths(
    self.data_dir,
    "site",
    "pack",
    "packer",
    "start",
    "packer.nvim"
  )
  self.packer_cache_path = join_paths(self.config_dir, "plugin", "packer_compiled.lua")
  vim.fn.mkdir(vim.fn.stdpath "cache", "p")

  local config = require "config"
  config:init {
    path = join_paths(self.config_dir, "config.lua"),
  }

  require("plugin-loader"):init {
    package_root = self.pack_dir,
    install_path = self.packer_install_dir,
  }

  return self
end

---Update LunarVim
---pulls the latest changes from github and, resets the startup cache
function M:update()
  package.loaded["utils.hooks"] = nil
  local _, hooks = pcall(require, "utils.hooks")
  hooks.run_pre_update()
  M:update_repo()
  hooks.run_post_update()
end

return M
