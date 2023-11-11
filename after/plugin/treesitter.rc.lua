local status, treesitter = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

treesitter.setup {
  ensure_installed = {"c","cpp","vim","dockerfile","fish","typescript","tsx","javascript","json","lua","gitignore","bash","astro","markdown","css","scss","yaml","toml","vue","php","html"},
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
    -- nvim-ts-autotagで奇妙な挙動になるのでfalseに
    enable_close_on_slash = false
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
