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
  [[command!  NvimInfo lua require('core.info').toggle_popup(vim.bo.filetype)]],
}

M.load = function(commands)
  for _, command in ipairs(commands) do
    vim.cmd(command)
  end
end

return M
