-- vim-prettier
-- auto format
vim.cmd([[
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
]])

-- 全体
vim.keymap.set("n","zm","  :PrettierAsync<cr>")
--VisualModeで部分のみ
vim.keymap.set("v","zmr","  :PrettierPartial<cr>")