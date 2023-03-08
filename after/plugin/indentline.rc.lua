
vim.cmd([[
let g:indent_blankline_char = '│'
]])
-- それぞれの深さでインデントラインの色とスペース/タブを入れたときのListCharsの色を指定
vim.cmd [[highlight IndentBlanklineChar guifg=#493759 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineSpaceCharBlankline guifg=#493759 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineSpaceChar guifg=#493759 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#483d8b gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#25383C gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#25383C gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#25383C gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#25383C gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#25383C gui=nocombine]]

require("indent_blankline").setup {
  char_highlight_list = {
  -- 指定した色を読み込み
        "IndentBlanklineChar",
        -- "IndentBlanklineIndent1",
        -- "IndentBlanklineIndent2", 
        -- "IndentBlanklineIndent3",
        -- "IndentBlanklineIndent4",
        -- "IndentBlanklineIndent5",
        -- "IndentBlanklineIndent6",
        "IndentBlanklineSpaceChar",
        "IndentBlanklineSpaceCharBlankline",
    },
}