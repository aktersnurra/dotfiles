require "default-config"
require "keymappings"
vim.cmd("luafile " .. CONFIG_PATH .. "/config.lua")
require "settings"
require "plugins"
require "cfg.utils"
require "cfg.galaxyline"
require "cfg.treesitter"
require "cfg.which-key"
require "cfg.lsp"
if O.lang.emmet.active then
  require "cfg.lsp.emmet-ls"
end
if O.lang.tailwindcss.active then
  require "cfg.lsp.tailwindcss-ls"
end

-- autoformat
if O.format_on_save then
  require("cfg.utils").define_augroups {
    autoformat = {
      {
        "BufWritePre",
        "*",
        [[try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry]],
      },
    },
  }
end
