local M = {}

M.config = function()
  O.plugin.hop = {
    active = false,
  }
end

M.setup = function()
  local status_ok, colorizer = pcall(require, "colorizer")
  if not status_ok then
    return
  end
  colorizer.setup(O.plugin.hop)
end

return M
