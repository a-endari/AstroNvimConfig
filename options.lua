-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    laststatus = 3, -- global statusline
    showmode = true,

    -- cmdheight = 1, -- to show the commandline results

    clipboard = "unnamedplus",
    cursorline = true,

    -- RTL support
    encoding = "utf8",
    termbidi = true,
    arabicshape = true,

    -- Indenting
    expandtab = true,
    shiftwidth = 4,
    smartindent = true,
    tabstop = 4,
    softtabstop = 4,
    fillchars = {
      eob = " ",
    },
    ignorecase = true,
    smartcase = true,
    mouse = "a",

    -- Numbers
    number = true,
    numberwidth = 2,
    ruler = false,
    relativenumber = true, -- sets vim.opt.relativenumber

    splitbelow = true,
    splitright = true,
    termguicolors = true,
    timeoutlen = 400,
    undofile = true,

    -- interval for writing swap file to disk, also used by gitsigns
    updatetime = 250,

    -- set to true or false etc.
    spell = false, -- sets vim.opt.spell
    spelllang = { "en", "de" },
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = true, -- sets vim.opt.wrap
  },
  g = {
    -- mapleader = " ", -- sets vim.g.mapleader
    -- autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    vim_markdown_conceal = 2,
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    resession_enabled = false, -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
  },

  o = {
    autochdir = true,
    conceallevel = 2,
  },
  -- for settings unkown to astro!
  vim.opt.whichwrap:append "hl", -- to let h and l go to the next line at the end of line!
}
