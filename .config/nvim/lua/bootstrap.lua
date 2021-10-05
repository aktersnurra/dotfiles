local M = {}

local in_headless = #vim.api.nvim_list_uis() == 0

---Join path segments that were passed as input
---@return string
function _G.join_paths(...)
  local uv = vim.loop
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
  M:update_repo()
  M:reset_cache()
  require("lsp.templates").generate_templates()
  if not in_headless then
    vim.schedule(function()
      require("packer").install()
      -- TODO: add a changelog
      vim.notify("Update complete", vim.log.levels.INFO)
    end)
  end
end

local function git_cmd(subcmd)
  local Job = require "plenary.job"
  local Log = require "core.log"
  local repo_dir = join_paths(get_runtime_dir(), "nvim")
  local args = { "-C", repo_dir }
  vim.list_extend(args, subcmd)

  local stderr = {}
  local stdout, ret = Job
    :new({
      command = "git",
      args = args,
      cwd = repo_dir,
      on_stderr = function(_, data)
        table.insert(stderr, data)
      end,
    })
    :sync()

  if not vim.tbl_isempty(stderr) then
    Log:debug(stderr)
  end

  if not vim.tbl_isempty(stdout) then
    Log:debug(stdout)
  end

  return ret
end

---pulls the latest changes from github
function M:update_repo()
  local Log = require "core.log"
  local sub_commands = {
    fetch = { "fetch" },
    diff = { "diff", "--quiet", "@{upstream}" },
    merge = { "merge", "--ff-only", "--progress" },
  }
  Log:info "Checking for updates"

  local ret = git_cmd(sub_commands.fetch)
  if ret ~= 0 then
    error "Update failed! Check the log for further information"
  end

  ret = git_cmd(sub_commands.diff)

  if ret == 0 then
    Log:info "nvim is already up-to-date"
    return
  end

  ret = git_cmd(sub_commands.merge)

  if ret ~= 0 then
    error "Error: unable to guarantee data integrity while updating your branch"
    error "Please pull the changes manually instead."
  end
end

---Reset any startup cache files used by Packer and Impatient
---Tip: Useful for clearing any outdated settings
function M:reset_cache()
  _G.__luacache.clear_cache()
  _G.__luacache.save_cache()
  require("plugin-loader"):cache_reset()
end

return M
