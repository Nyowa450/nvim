-- local status, packer = pcall(require, "packer")
-- if (not status) then
--   print("Packer is not installed")
--   return
-- end

-- vim.cmd [[packadd packer.nvim]]

-- packer.startup(function(use)

--   use 'wbthomason/packer.nvim'

--   use 'nvim-lua/plenary.nvim' -- Common 

--   -- use { "catppuccin/nvim", as = "catppuccin" } -- colorscheme
--   -- use "EdenEast/nightfox.nvim" -- Packer
--   -- use 'folke/tokyonight.nvim'
--   -- use 'shaunsingh/nord.nvim'
--   use 'ishan9299/nvim-solarized-lua'
--   use 'rose-pine/neovim'
--   use 'sainnhe/everforest'
--   use 'folke/lsp-colors.nvim'
--   -- use 'svrana/neosolarized.nvim'
--   -- use 'tjdevries/colorbuddy.nvim'
--   --
--   use 'lukas-reineke/indent-blankline.nvim'

--   use 'antoinemadec/FixCursorHold.nvim'

--   use 'nvim-lualine/lualine.nvim' -- Statusline

--   use 'zefei/vim-wintabs'
--   use 'zefei/vim-wintabs-powerline'

--   use 'lambdalisue/fern.vim'
--   use 'lambdalisue/nerdfont.vim'
--   use 'lambdalisue/fern-renderer-nerdfont.vim'
--   use 'kyazdani42/nvim-web-devicons'
--   use 'lambdalisue/glyph-palette.vim'
  
--   use {
--     "williamboman/mason.nvim",
--     "williamboman/mason-lspconfig.nvim",
--     "neovim/nvim-lspconfig",
--   }

--   use 'hrsh7th/nvim-cmp'
--   use 'hrsh7th/cmp-nvim-lsp'
--   use 'hrsh7th/cmp-vsnip'
--   use 'hrsh7th/cmp-buffer'
--   use 'hrsh7th/cmp-path'
--   use 'hrsh7th/cmp-cmdline'
--   use 'hrsh7th/cmp-nvim-lsp-signature-help'
--   use 'hrsh7th/vim-vsnip'
--   -- vsnip exensions for react.
--   -- use "rafamadriz/friendly-snippets"

--   use 'onsails/lspkind.nvim'

--   use({
--     "glepnir/lspsaga.nvim",
--     branch = "main",
--     })

--   use {
--     'nvim-treesitter/nvim-treesitter',
--     run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
--   }
--   use 'digitaltoad/vim-pug'

--   --Linter + Formatter
--   use({
--     "jose-elias-alvarez/null-ls.nvim",
--     requires = { "nvim-lua/plenary.nvim" },
--   })

--   use 'nvim-telescope/telescope.nvim'
--   use {
--     "nvim-telescope/telescope-frecency.nvim",
--     requires = {"kkharji/sqlite.lua"}
--   }

--   use 'windwp/nvim-autopairs'
--   use 'windwp/nvim-ts-autotag'
--   use "terrortylor/nvim-comment"
--   use "kylechui/nvim-surround"
--   use 'machakann/vim-highlightedyank'

--   use 'kevinhwang91/nvim-hlslens'

--   use 'norcalli/nvim-colorizer.lua'

--   use 'kdheepak/lazygit.nvim'
--   use 'tpope/vim-fugitive'
--   use 'lewis6991/gitsigns.nvim'

--   use 'simeji/winresizer'

-- end)
