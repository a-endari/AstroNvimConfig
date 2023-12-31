return {
  "sample_user/sample_repository",
  
  dependencies = {"plugins_git_user_and_reporitorie", "and_the_next_one",},

  event = {
    -- "User AstroFile", -- Triggered after openning a file
    -- "VeryLazy", -- Triggered after starting Neovim
    -- "BuffEnter *.lua", -- Triggered after openning a lua file
    -- "InsertEnter", -- Triggered after entring insert mode
    -- "LspAttach",  -- Triggered after starting LSPs
  },
  
  -- loads on for this file typs:
  ft = {"python", markdown},


  keys = {
    { "<Leader>st",":Something<cr>" },
    { "<Leader>se", ":SomethingElse<CR>" },
  },
  cmd = {"Command1", "Command2"},

  -- works the same as config = function()
  --   require("sample_repository").setup(...)
  -- end,
  opts = {
    -- configurations can be added here.
  },

}
