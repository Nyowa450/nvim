local status, telescope = pcall(require, "telescope")
if (not status) then
    return
end

local builtin = require('telescope.builtin')

telescope.setup({
    defaults = {
        sorting_strategy = "ascending",
        winblend = 4,
        layout_strategy = 'vertical',
        layout_config = {
            height = 0.8,
            width = 0.8
        },
        file_ignore_patterns = {"^.git/", "^node_modules/"}

    }
})
telescope.load_extension("frecency")

vim.keymap.set('n', '<leader>f', function()
    builtin.find_files({
        no_ignore = false,
        hidden = true
    })
end)

vim.keymap.set('n', ',r', function()
    builtin.live_grep({
        hidden = true
    })
end)

vim.keymap.set('n', ',a', function()
    builtin.diagnostics()
end)

vim.keymap.set("n", "<leader>l", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>", {
    noremap = true,
    silent = true
})
