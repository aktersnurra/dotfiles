-- general
options.format_on_save = true
options.colorscheme = "dark"
vim.opt.wrap = false

-- Keymappings
options.leader = "space"

options.keys.normal_mode["<esc><esc>"] = "<cmd>nohlsearch<cr>"

-- LSP
options.lsp.diagnostics.virtual_text = false
-- require("extra.json_schemas").setup()

-- After changing plugin config it is recommended to run :PackerCompile
options.builtin.autopairs.active = true
options.builtin.dashboard.active = true
options.builtin.terminal.active = true
options.builtin.telescope.active = true
options.builtin.bufferline.active = true
options.builtin.lualine.active = true
options.builtin.lualine.style = "dark"
options.builtin.project.patterns = { ".git" }

-- Whichkey
options.builtin.which_key.mappings.l.d = { "<cmd>TroubleToggle<cr>", "Diagnostics" }
options.builtin.which_key.mappings.l.R = {
  "<cmd>TroubleToggle lsp_references<cr>",
  "References",
}
options.builtin.which_key.mappings.l.o = { "<cmd>SymbolsOutline<cr>", "Outline" }
options.builtin.which_key.mappings.T.h = {
  "<cmd>TSHighlightCapturesUnderCursor<cr>",
  "Highlight",
}
options.builtin.which_key.mappings.T.p = { "<cmd>TSPlaygroundToggle<cr>", "Playground" }
options.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen" }
options.builtin.which_key.mappings["r"] = {
  name = "Replace",
  r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
  w = {
    "<cmd>lua require('spectre').open_visual({select_word=true})<cr>",
    "Replace Word",
  },
  f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}
options.builtin.which_key.mappings.f = {
  "<cmd>lua require('lir.float').toggle()<cr>",
  "Files",
}
options.builtin.which_key.mappings.v = { "<cmd>vsplit<cr>", "Vertical Split" }
options.builtin.which_key.mappings.h = { "<cmd>split<cr>", "Horizontal Split" }

-- options.builtin.nvimtree.auto_open = 0

-- Treesitter
options.builtin.treesitter.ensure_installed = "maintained"
options.builtin.treesitter.autotag.enable = false
options.builtin.treesitter.playground.enable = false
options.builtin.treesitter.indent.disable = { "python" }

options.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen" }
options.builtin.which_key.mappings["r"] = {
  name = "Replace",
  r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
  w = {
    "<cmd>lua require('spectre').open_visual({select_word=true})<cr>",
    "Replace Word",
  },
  f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}

options.builtin.telescope.on_config_done = function()
  local actions = require "telescope.actions"
  options.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
  options.builtin.telescope.defaults.mappings.i["<C-k>"] =
    actions.move_selection_previous
  options.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
  options.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
end

-- Extra plugings

options.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  {
    "nvim-telescope/telescope-project.nvim",
    event = "BufWinEnter",
    setup = function()
      vim.cmd [[packadd telescope.nvim]]
    end,
  },

  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("extra.numb").config()
    end,
  },

  {
    "unblevable/quick-scope",
    config = function()
      require "extra.quickscope"
    end,
  },

  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("extra.hop").config()
    end,
  },

  {
    "tamago324/lir.nvim",
    config = function()
      require "extra.lir"
    end,
  },

  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("extra.colorizer").config()
    end,
  },

  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("extra.spectre").config()
    end,
  },

  {
    "folke/zen-mode.nvim",
    config = function()
      require("extra.zen").config()
    end,
  },

  {
    "karb94/neoscroll.nvim",
    config = function()
      require("extra.neoscroll").config()
    end,
  },

  {
    "kevinhwang91/nvim-bqf",
    event = "BufRead",
  },

  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
}
