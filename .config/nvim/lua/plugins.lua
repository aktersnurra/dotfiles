return {
  -- Packer can manage itself as an optional plugin
  { "wbthomason/packer.nvim" },
  { "neovim/nvim-lspconfig" },
  { "tamago324/nlsp-settings.nvim" },
  { "jose-elias-alvarez/null-ls.nvim" },
  {
    "kabouzeid/nvim-lspinstall",
    event = "VimEnter",
    config = function()
      local lspinstall = require "lspinstall"
      lspinstall.setup()
      if options.builtin.lspinstall.on_config_done then
        options.builtin.lspinstall.on_config_done(lspinstall)
      end
    end,
  },

  { "nvim-lua/popup.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "tjdevries/astronauta.nvim" },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("core.telescope").setup()
      if options.builtin.telescope.on_config_done then
        options.builtin.telescope.on_config_done(require "telescope")
      end
    end,
  },

  -- Autocomplete
  {
    "hrsh7th/nvim-compe",
    -- event = "InsertEnter",
    config = function()
      require("core.compe").setup()
      if options.builtin.compe.on_config_done then
        options.builtin.compe.on_config_done(require "compe")
      end
    end,
  },

  -- Autopairs
  {
    "windwp/nvim-autopairs",
    -- event = "InsertEnter",
    config = function()
      require "core.autopairs"
      if options.builtin.autopairs.on_config_done then
        options.builtin.autopairs.on_config_done(require "nvim-autopairs")
      end
    end,
  },

  -- Snippets

  { "hrsh7th/vim-vsnip", event = "InsertEnter" },
  { "rafamadriz/friendly-snippets", event = "InsertEnter" },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("core.treesitter").setup()
      if options.builtin.treesitter.on_config_done then
        options.builtin.treesitter.on_config_done(require "nvim-treesitter.configs")
      end
    end,
  },

  -- NvimTree
  {
    "kyazdani42/nvim-tree.lua",
    -- event = "BufWinOpen",
    -- cmd = "NvimTreeToggle",
    -- commit = "fd7f60e242205ea9efc9649101c81a07d5f458bb",
    config = function()
      require("core.nvimtree").setup()
      if options.builtin.nvimtree.on_config_done then
        options.builtin.nvimtree.on_config_done(require "nvim-tree.config")
      end
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("core.gitsigns").setup()
      if options.builtin.gitsigns.on_config_done then
        options.builtin.gitsigns.on_config_done(require "gitsigns")
      end
    end,
    event = "BufRead",
  },

  -- whichkey
  {
    "folke/which-key.nvim",
    config = function()
      require("core.which-key").setup()
      if options.builtin.which_key.on_config_done then
        options.builtin.which_key.on_config_done(require "which-key")
      end
    end,
    event = "BufWinEnter",
  },

  -- Comments
  {
    "terrortylor/nvim-comment",
    event = "BufRead",
    config = function()
      local status_ok, nvim_comment = pcall(require, "nvim_comment")
      if not status_ok then
        local Log = require "core.log"
        Log:get_default().error "Failed to load nvim-comment"
        return
      end
      nvim_comment.setup()
      if options.builtin.comment.on_config_done then
        options.builtin.comment.on_config_done(nvim_comment)
      end
    end,
  },

  {
    "ahmedkhalf/lsp-rooter.nvim",
    config = function()
      if options.builtin.rooter.on_config_done then
        options.builtin.rooter.on_config_done()
      end
    end,
  },

  -- Icons
  { "kyazdani42/nvim-web-devicons" },

  -- Status Line and Bufferline
  {
    "glepnir/galaxyline.nvim",
    config = function()
      require "core.galaxyline"
      if options.builtin.galaxyline.on_config_done then
        options.builtin.galaxyline.on_config_done(require "galaxyline")
      end
    end,
    event = "BufWinEnter",
    disable = not options.builtin.galaxyline.active,
  },

  {
    "romgrk/barbar.nvim",
    config = function()
      require "core.bufferline"
      if options.builtin.bufferline.on_config_done then
        options.builtin.bufferline.on_config_done()
      end
    end,
    event = "BufWinEnter",
  },

  -- Debugging
  {
    "mfussenegger/nvim-dap",
    -- event = "BufWinEnter",
    config = function()
      require("core.dap").setup()
      if options.builtin.dap.on_config_done then
        options.builtin.dap.on_config_done(require "dap")
      end
    end,
    disable = not options.builtin.dap.active,
  },

  -- Debugger management
  {
    "Pocco81/DAPInstall.nvim",
    -- event = "BufWinEnter",
    -- event = "BufRead",
    disable = not options.builtin.dap.active,
  },

  -- Builtins, these do not load by default

  -- Dashboard
  {
    "ChristianChiarulli/dashboard-nvim",
    event = "BufWinEnter",
    config = function()
      require("core.dashboard").setup()
      if options.builtin.dashboard.on_config_done then
        options.builtin.dashboard.on_config_done(require "dashboard")
      end
    end,
    disable = not options.builtin.dashboard.active,
  },

  {
    "akinsho/nvim-toggleterm.lua",
    event = "BufWinEnter",
    config = function()
      require("core.terminal").setup()
      if options.builtin.terminal.on_config_done then
        options.builtin.terminal.on_config_done(require "toggleterm")
      end
    end,
    disable = not options.builtin.terminal.active,
  },
}
