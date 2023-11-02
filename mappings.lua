return {
    n = {

        ["<leader>br"] = {
            ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
            desc = "exit terminal"
        },
        ["<leader>n"] = { name = "New Tab" },

    },

    -- Use ESC in terminal
    vim.keymap.set('t', '<Esc>', '<C-\\><C-n>'),

    -- vim.keymap.set('n', '<Tab>', '[b')
}
