local status, saga = pcall(require, "lspsaga")
if (not status) then return end

local keymap = vim.keymap.set

saga.setup{
  ui = {
    -- currently only round theme
    theme = 'round',
    -- this option only work in neovim 0.9
    title = false,
    -- border type can be single,double,rounded,solid,shadow.
    border = 'rounded',
    winblend = 6,
    expand = '',
    collapse = '',
    preview = ' ',
    code_action = '💡',
    diagnostic = '',
    incoming = ' ',
    outgoing = ' ',
    colors = {
      --float window normal background color
      -- normal_bg = '#232136',
    },
    kind = {},
  },

  preview = {
    lines_above = 1,
    lines_below = 10,
  },
  scroll_preview = {
    scroll_down = '<C-f>',
    scroll_up = '<C-b>',
  },
  request_timeout = 2000,

  finder = {
    edit = { 'o', '<CR>' },
    vsplit = 's',
    split = 'i',
    tabe = 't',
    quit = { 'q', '<ESC>' },
  },
-- ライトバルブをすべて無効
  lightbulb = {
    enable = false,
    enable_in_insert = false,
    sign = false,
    sign_priority = 40,
    virtual_text = false,
  }, 

  diagnostic = {
    show_code_action = false,
    show_source = true,
    jump_num_shortcut = true,
    keys = {
      exec_action = 'o',
      quit = 'q',
      go_action = 'g'
    },
  },
  -- winbarのシンボルを無効化
  symbol_in_winbar = {
    enable = false,
    separator = ' ',
    hide_keyword = true,
    show_file = true,
    folder_level = 2,
    respect_root = false,
    color_mode = true,
  },
}

keymap("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { silent = true })
keymap("n", "rn", "<cmd>Lspsaga rename<CR>", { silent = true })
keymap("n", "K", "<cmd>Lspsaga hover_doc ++quiet<CR>", { silent = true }) 
keymap("n", "<space>e", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
-- keymap({"n","v"}, "ma", "<cmd>Lspsaga code_action<CR>", { silent = true })
-- keymap("n", "g[", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
-- keymap("n", "g]", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
