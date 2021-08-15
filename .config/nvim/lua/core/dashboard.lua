local M = {}
M.config = function()
  options.builtin.dashboard = {
    active = false,
    search_handler = "telescope",
    custom_header = {
      "     ##############..... ############## ",
      "   ##############......##############   ",
      "     ##########..........##########     ",
      "     ##########........##########       ",
      "     ##########.......##########        ",
      "     ##########.....##########..        ",
      "     ##########....##########.....      ",
      "   ..##########..##########.........    ",
      " ....##########.#########.............  ",
      "   ..################JJJ............    ",
      "     ################.............      ",
      "     ##############.JJJ.JJJJJJJJJJ      ",
      "     ############...JJ...JJ..JJ  JJ     ",
      "     ##########....JJ...JJ..JJ  JJ      ",
      "     ########......JJJ..JJJ JJJ JJJ     ",
      "    ######    .........                 ",
      "                 .....                  ",
      "                   .                    ",
    },

    custom_section = {
      a = {
        description = { "  Find File          " },
        command = "Telescope find_files",
      },
      b = {
        description = { "  Recently Used Files" },
        command = "Telescope oldfiles",
      },
      c = {
        description = { "  Find Word          " },
        command = "Telescope live_grep",
      },
      d = {
        description = { "  Settings           " },
        command = ":e ~/.config/nvim/config.lua",
      },
    },
  }
end

M.setup = function()
  vim.g.dashboard_disable_at_vimenter = 0

  vim.g.dashboard_custom_header = options.builtin.dashboard.custom_header

  vim.g.dashboard_default_executive = options.builtin.dashboard.search_handler

  vim.g.dashboard_custom_section = options.builtin.dashboard.custom_section

  options.builtin.which_key.mappings[";"] = { "<cmd>Dashboard<CR>", "Dashboard" }

  -- f = {
  --   description = { "  Neovim Config Files" },
  --   command = "Telescope find_files cwd=" .. CoptionsFIG_PATH,
  -- },
  -- e = {description = {'  Marks              '}, command = 'Telescope marks'}

  vim.cmd "let g:dashboard_session_directory = $HoptionsE..'/.config/nvim/.sessions'"
  vim.cmd "let packages = len(globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1))"

  vim.api.nvim_exec(
    [[
    let g:dashboard_custom_footer = ['LuaJIT loaded '..packages..' builtins']
]],
    false
  )

  -- file_browser = {description = {' File Browser'}, command = 'Telescope find_files'},

  -- vim.g.dashboard_session_directory = CACHE_PATH..'/session'
  -- vim.g.dashboard_custom_footer = optionsdashboard.footer
  require("core.autocmds").define_augroups {
    _dashboard = {
      -- seems to be nobuflisted that makes my stuff disappear will do more testing
      {
        "FileType",
        "dashboard",
        "setlocal nocursorline noswapfile synmaxcol& signcolumn=no norelativenumber nocursorcolumn nospell  nolist  nonumber bufhidden=wipe colorcolumn= foldcolumn=0 matchpairs= ",
      },
      {
        "FileType",
        "dashboard",
        "set showtabline=0 | autocmd BufLeave <buffer> set showtabline="
          .. vim.opt.showtabline._value,
      },
      { "FileType", "dashboard", "nnoremap <silent> <buffer> q :q<CR>" },
    },
  }
end

return M
