return {
  "epwalsh/obsidian.nvim",
  -- version = "*", -- recommended, use latest release instead of latest commit
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
  keys = {
    {
      "gf",
      function()
        if require("obsidian").util.cursor_on_markdown_link() then
          return "<cmd>ObsidianFollowLink<CR>"
        else
          return "gf"
        end
      end,
      noremap = false,
      expr = true,
    },
    {
      "<Leader>ot",
      ":ObsidianToday<CR>",
      desc = "Open Today's note",
    },
    {
      "<Leader>sf",
      ":ObsidianQuickSwitch<CR>",
      desc = "List Obsidian Files",
    },
  },
  opts = {
    workspaces = {
      {
        name = "Journal",
        path = vim.env.HOME .. "/Dropbox/Obsidian-Vaults/Journal",
      },
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
        name = "ios",
        path = vim.env.HOME .. "/Dropbox/Apps/remotely-save/IOS VAULT",
      },
    },
  },
}
