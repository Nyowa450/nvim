local status, treesitter = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

treesitter.setup {
  ensure_installed = {"vim","dockerfile","fish","typescript","tsx","javascript","json","lua","gitignore","bash","astro","markdown","markdown_inline","css","scss","yaml","toml","vue","php","html"},
  -- ignore_install = { "html" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false, -- catpuucin用
    disable = {},
  },
	indent ={
		enable =true,
    disable ={"html"},
	},
  autotag = {
    enable = true,
  },
}
