-- Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- basic setting
require('base')

--Plugin list
require("lazy").setup({

  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
  }, 

  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },

 -- Common Plugin(Lua)
  'nvim-lua/plenary.nvim',

  {'nvim-tree/nvim-web-devicons',lazy = false,priority = 1000},


 -- coc.nvim
  {'neoclide/coc.nvim', branch = 'release'},
 -- coc-snipet用
  {'mlaursen/vim-react-snippets'},

 -- Statusline
  {'nvim-lualine/lualine.nvim'},

 -- Buffer Control
  {'romgrk/barbar.nvim',dependencies = { 'nvim-web-devicons' }},

  {'lambdalisue/fern.vim',lazy = false, priority = 1000 }, 
  {'lambdalisue/nerdfont.vim'},
  {'lambdalisue/glyph-palette.vim'},
  {'lambdalisue/fern-renderer-nerdfont.vim'},

  -- JSのアイコンなどが表示されなくなっていたs
  -- {'TheLeoP/fern-renderer-web-devicons.nvim',dependencies = {'nvim-web-devicons'}}, 


 --Syntax Highlight
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  {'JoosepAlviste/nvim-ts-context-commentstring'}, -- context-comment with treesitter
  {"yioneko/nvim-yati", version="*"},

  {'digitaltoad/vim-pug'}, -- for .jade,.pug file syntax

 -- Telescope
  {'nvim-telescope/telescope.nvim' },
  {'fannheyward/telescope-coc.nvim'},
  {
   "nvim-telescope/telescope-frecency.nvim",
  },

 -- Coding Support
  {'windwp/nvim-autopairs'},
  {'windwp/nvim-ts-autotag'},
 --  'haringsrob/nvim_context_vt'

  -- {'petertriho/nvim-scrollbar'}, -- オンにすると巨大なファイルでかなり重くなる
  {'kevinhwang91/nvim-hlslens'},
  {'haya14busa/vim-asterisk'},
  
  {'lukas-reineke/indent-blankline.nvim', main = "ibl", opts = {} },
  {'numToStr/Comment.nvim' },
  {'norcalli/nvim-colorizer.lua' },
  {"kylechui/nvim-surround"},

  {'simeji/winresizer' },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },

 -- Rust Integration
 -- use 'rust-lang/rust.vim'

 -- For using Prettier
  {'prettier/vim-prettier'},

 -- Git Integration
  {'tpope/vim-fugitive'},
  {'lewis6991/gitsigns.nvim'},
 
  -- {'github/copilot.vim'},

 -- terminal Integration
  { 'akinsho/toggleterm.nvim'},

 -- Document
  { 'vim-jp/vimdoc-ja'},

  {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
  }
})

