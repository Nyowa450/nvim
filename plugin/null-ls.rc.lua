local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup({
    -- add your sources / config options here
    sources = {
        null_ls.builtins.diagnostics.eslint.with({
        prefer_local = "node_modules/.bin",
    }),
        null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.diagnostics.rubocop,
        -- null_ls.builtins.formatting.rubocop,
    },
    debug = false,
})
-- formatを使う
vim.keymap.set('n', '<leader>mm', function() vim.lsp.buf.format { async = true } end)
