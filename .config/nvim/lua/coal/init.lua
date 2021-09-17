vim.api.nvim_command "hi clear"
if vim.fn.exists "syntax_on" then
  vim.api.nvim_command "syntax reset"
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "coal"

local util = require "coal.util"
Config = require "coal.config"
C = require "coal.palette"
local highlights = require "coal.highlights"
local Treesitter = require "coal.Treesitter"
local markdown = require "coal.markdown"
local Whichkey = require "coal.Whichkey"
local Git = require "coal.Git"
local LSP = require "coal.LSP"

local skeletons = {
  highlights,
  Treesitter,
  markdown,
  Whichkey,
  Git,
  LSP,
}

for _, skeleton in ipairs(skeletons) do
  util.initialise(skeleton)
end
