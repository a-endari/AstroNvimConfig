return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  cmd = { "ObsidianWorkspace" },
  event = { -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre */Obsidian-Vaults/**.md",
    "BufNewFile */Obsidian-Vaults/**.md",
  },
  dependencies = { -- Required.
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "Personal",
        path = vim.env.HOME .. "/Dropbox/Obsidian-Vaults/Personal",
      },
      {
        name = "Work",
        path = vim.env.HOME .. "/Dropbox/Obsidian-Vaults/Work",
      },
      {
        name = "German",
        path = vim.env.HOME .. "/Dropbox/Obsidian-Vaults/German",
      },
      {
        name = "Journal",
        path = vim.env.HOME .. "/Dropbox/Obsidian-Vaults/Journal",
      },
    },

    -- see below for full list of options 👇
  },
}
