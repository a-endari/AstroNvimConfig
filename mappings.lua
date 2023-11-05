return {
  n = {

    ["<leader>br"] = {
      ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
      desc = "exit terminal",
    },
    ["<leader>e"] = {
      ":NvimTreeToggle<CR>",
      desc = "Toggle NvimTree",
    },
  },
  i = {
    -- to navigate while typing
    ["<C-h>"] = { "<Left>" },
    ["<C-j>"] = { "<C-o>gj" },
    ["<C-k>"] = { "<C-o>gk" },
    ["<C-l>"] = { "<Right>" },
  },
  v = {
    
  },
  -- Use ESC in terminal
  vim.keymap.set("t", "<Esc>", "<C-\\><C-n>"),
  vim.keymap.set("n", "<leader>Z", ":ZenMode<CR>:Limelight 0.9<CR>", { desc = "Zen Mode" }),
  vim.keymap.set("n", "<leader>lm", ":ZenMode<CR>:Limelight!<CR>", { desc = "exit ZenModen" }),
  vim.keymap.set("n", "<leader>n", ":enew<CR>", { desc = "New Tab" }),
  vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprev<CR>", { noremap = true }),
  vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", { noremap = true }),
  -- i need to some how make this shit work
  -- vim.keymap.set("n", "<Tab>", "[b", { desc = "change tab" }),
  -- vim.keymap.set('n', '<Tab>', '[b')
}
