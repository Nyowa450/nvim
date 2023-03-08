vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.number = true
vim.wo.relativenumber = false
vim.opt.mouse = 'a'
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 2
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'fish'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true 
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false 
vim.opt.helplang = 'ja','en'
vim.opt.updatetime = 300
vim.opt.showtabline = 2
vim.opt.clipboard = 'unnamedplus'
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
vim.opt.hidden = true
vim.opt.swapfile = false
vim.opt.wrap = true
vim.opt.pumblend = 7
-- Python3
vim.cmd([[
    let g:python3_host_prog = '/usr/bin/python3'
]])
-- 不可視文字を非表示(colorscheme用)
vim.opt.list = false
-- Leder Key
vim.g.mapleader = ','

local keymap = vim.keymap

-- キーバインド
-- 画面分割
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- アクティブウィンドウの移動
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Emacs like keybinding
keymap.set('i', '<C-f>', '<Right>')

-- jjでEscする
keymap.set('i','jj','<Esc>')

-- 設定ファイルを開く
keymap.set('n','<F1>',':edit $MYVIMRC<CR>')
