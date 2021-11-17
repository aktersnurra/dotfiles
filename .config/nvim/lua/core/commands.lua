local M = {}

M.defaults = {
  [[
  function! QuickFixToggle()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
      copen
    else
      cclose
    endif
  endfunction
  ]],
  -- :NvimInfo
  [[ command! NvimInfo lua require('core.info').toggle_popup(vim.bo.filetype) ]],
  [[ command! NvimCacheReset lua require('utils.hooks').reset_cache() ]],
  [[ command! NvimUpdate lua require('bootstrap').update() ]],
  [[ command! NvimSyncCorePlugins lua require('plugin-loader'):sync_core_plugins() ]],
  [[ command! NvimReload lua require('config'):reload() ]],
  [[ command! NvimToggleFormatOnSave lua require('core.autocmds').toggle_format_on_save() ]],
}

M.load = function(commands)
  for _, command in ipairs(commands) do
    vim.cmd(command)
  end
end

return M
