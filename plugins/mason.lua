return {
  {
    "williamboman/mason-lspconfig.nvim",
    -- ovverrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = { "lua_ls", "pyright" },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    -- ovverrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = { "prettier", "stylua", "ruff", "black" },
    },
  },

  {
    "jay-babu/mason-nvim-dap.nvim",
    -- ovverrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = { "python" },
    },
  },
}
