return {
  n = {

    ["<Leader>;"] = { ":FineCmdline<CR>", desc = "FloatCommand" },
    ["<Leader>sf"] = { ":ObsidianQuickSwitch<CR>", desc = "Switch Obsidian file" },
    ["<leader>br"] = {
      ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
      desc = "File Browser",
    },
  },
  i = {
    -- to navigate while typing
    ["<C-h>"] = { "<Left>" },
    ["<C-j>"] = { "<C-o>gj" },
    ["<C-k>"] = { "<C-o>gk" },
    ["<C-l>"] = { "<Right>" },
  },
  v = {},
  -- Use ESC in terminal
  vim.keymap.set("t", "<Esc>", "<C-\\><C-n>"),

  -- Use Tab to navigate tabs in normal mode!
  vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprev<CR>", {
    noremap = true,
  }),
  vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", {
    noremap = true,
  }),
}
