-- Lspkindのrequire
local lspkind = require("lspkind")
--補完関係の設定
local cmp = require("cmp")

cmp.setup({
  completion = {
    -- 4文字目から補完を開始
    keyword_length = 3,
  },
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
  sources = {
    { name = "nvim_lsp" },
    { name = "vsnip" }, -- For vsnip users.
    { name = "buffer" },
    { name = "path" },
    { name = "nvim_lsp_signature_help" },
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-b>'] = cmp.mapping.scroll_docs(4),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    -- ["<Tab>"] = cmp.mapping.select_next_item(),
    -- ['<C-l>'] = cmp.mapping.complete(),
    -- ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm(),
  }),
  experimental = {
    ghost_text = false,
  },
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
    })
  }
})

cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "path" },
    { name = "cmdline" },
  },
})

-- vim-vsnip用
vim.cmd([[
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascript = ['javascriptreact']
let g:vsnip_filetypes.typescript = ['typescriptreact']
]])

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]
