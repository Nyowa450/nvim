require('base')
require('plugins')

vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]]
