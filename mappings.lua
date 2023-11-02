return {
  n = {

    ["<leader>br"] = {
      ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
      desc = "exit terminal",
    },
    ["<leader>e"] = {
      ":NvimTreeToggle<CR>",
      desc = "Toggle Nvim Tree",
    },
    ["<leader>n"] = {
      name = "New Tab",
    },
  },
  i = {
    -- to navigate while typing
    ["<C-h>"] = { "<Left>" },
    ["<C-j>"] = { "<C-o>gj" },
    ["<C-k>"] = { "<C-o>gk" },
    ["<C-l>"] = { "<Right>" },
  },
  -- Use ESC in terminal
  vim.keymap.set("t", "<Esc>", "<C-\\><C-n>"),
  -- vim.keymap.set('n', '<Tab>', '[b')
}
