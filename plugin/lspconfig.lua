
local opts = { noremap=true, silent=true }

local on_attach = function(client, bufnr)

  -- LSPのフォーマットを無効
  client.server_capabilities.documentFormattingProvider = false

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  -- -- Mappings.
  local bufopts = { noremap=true, silent=true, buffer=bufnr }

  vim.keymap.set('n', 'rn', vim.lsp.buf.rename, bufopts)

end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  function (server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,
}

-- Diagnostic symbols in the sign column 
local signs = { Error = " ", Warn = ">>", Hint = ">", Info = ">" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- LSP-Diagnostic Settings(LSP-Handler)
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = { spacing = 2, prefix = "◆",severity = 'Error'},
  severity_sort = true,
  underline = true,
  update_in_insert = false,
}
)

-- Diagnostic Setting(Gloabal)
vim.diagnostic.config({
  virtual_text = { spacing = 2, prefix = "◆",severity = 'Error'},
  severity_sort = true,
  underline = true,
  update_in_insert = false,
  float = {
    source = "always", -- Or "if_many"
  },
})

  --virtual_text = { spacing = 2, prefix = "◆" ,severity='Error'},
  -- メモ：VitualTextの表示をいじってる➔ErrorレベルのみTextを表示指定
