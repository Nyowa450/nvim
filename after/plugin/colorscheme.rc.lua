

-- require("catppuccin").setup({
--     flavour = "mocha", -- latte, frappe, macchiato, mocha
--     background = { -- :h background
--         light = "latte",
--         dark = "mocha",
--     },
--     transparent_background = false,
--     show_end_of_buffer = false, -- show the '~' characters after the end of buffers
--     term_colors = true,
--     dim_inactive = {
--         enabled = false,
--         shade = "dark",
--         percentage = 0.15,
--     },
--     no_italic = false, -- Force no italic
--     no_bold = false, -- Force no bold
--     styles = {
--         comments = {  },
--         conditionals = { "italic" },
--         loops = {},
--         functions = {"italic"},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--     },
--     color_overrides = {},
--     custom_highlights = {},
--     integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         telescope = true,
--         notify = false,
--         mini = false,
--             fern = true,
--             indent_blankline = {
--             enabled = false,
--             colored_indent_levels = false,
-- 		},

--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--     },
-- })

-- -- setup must be called before loading
-- vim.cmd.colorscheme "catppuccin"

-- Default options
-- require('nightfox').setup({
--   options = {
--     -- Compiled file's destination location
--     compile_path = vim.fn.stdpath("cache") .. "/nightfox",
--     compile_file_suffix = "_compiled", -- Compiled file suffix
--     transparent = false,    -- Disable setting background
--     terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
--     dim_inactive = false,   -- Non focused panes set to alternative background
--     styles = {              -- Style to be applied to different syntax groups
--       comments = "italic",    -- Value is any valid attr-list value `:help attr-list`
--       conditionals = "italic",
--       constants = "NONE",
--       functions = "italic",
--       keywords = "NONE",
--       numbers = "NONE",
--       operators = "NONE",
--       strings = "NONE",
--       types = "NONE",
--       variables = "NONE",
--     },
--     inverse = {             -- Inverse highlight for different types
--       match_paren = false,
--       visual = false,
--       search = false,
--     },
--     modules = {             -- List of various plugins and additional options
-- 		 lsp_saga = false,
--     },
--   },
--   palettes = {},
--   specs = {},
--   groups = {},
-- })

-- -- setup must be called before loading
-- vim.cmd("colorscheme duskfox")

-- require("tokyonight").setup({
--   -- your configuration comes here
--   -- or leave it empty to use the default settings
--   style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--   light_style = "day", -- The theme is used when the background is set to light
--   transparent = false, -- Enable this to disable setting the background color
--   terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--   styles = {
--     -- Style to be applied to different syntax groups
--     -- Value is any valid attr-list value for `:help nvim_set_hl`
--     comments = { italic = false },
--     keywords = { italic = true },
--     functions = { italic = true },
--     variables = {italic = false },
--     -- Background styles. Can be "dark", "transparent" or "normal"
--     sidebars = "dark", -- style for sidebars, see below
--     floats = "dark", -- style for floating windows
--   },
--   sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
--   day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
--   hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
--   dim_inactive = false, -- dims inactive windows
--   lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

--   --- You can override specific color groups to use other groups or a hex color
--   --- function will be called with a ColorScheme table
--   ---@param colors ColorScheme
--   on_colors = function(colors) end,

--   --- You can override specific highlights to use other groups or a hex color
--   --- function will be called with a Highlights and ColorScheme table
--   ---@param highlights Highlights
--   ---@param colors ColorScheme
--   on_highlights = function(highlights, colors) end,
-- })
-- -- Lua
-- vim.cmd[[colorscheme tokyonight-moon]]

-- nord.nvim
-- vim.g.nord_contrast = false
-- vim.g.nord_borders = false
-- vim.g.nord_disable_background = false
-- vim.g.nord_italic = false
-- vim.g.nord_uniform_diff_background = true
-- vim.g.nord_bold = true

-- -- Load the colorscheme
-- require('nord').set()

-- vim.cmd[[colorscheme nord]]

-- rose-pineをデフォルトのテーマに設定○
require('rose-pine').setup({
	--- @usage 'main' | 'moon'
	dark_variant = 'moon',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = false,
	disable_float_background = true,
	disable_italics = true,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = 'base',
		panel = 'surface',
		border = 'highlight_med',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
		-- or set all headings at once
		-- headings = 'subtle'
	},

	-- Change specific vim highlight groups
	highlight_groups = {
		ColorColumn = { bg = 'rose' }
	}
})

-- set colorscheme after options
vim.cmd('colorscheme rose-pine')