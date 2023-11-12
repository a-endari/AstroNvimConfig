return {
  "goolord/alpha-nvim",
  cmd = "Alpha",
  opts = function()
    local dashboard = require "alpha.themes.dashboard"
    dashboard.section.header.val = {
      "   █████╗ ██████╗ ██████╗  █████╗ ███████╗   ",
      "  ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝   ",
      "  ███████║██████╔╝██████╔╝███████║███████╗   ",
      "  ██╔══██║██╔══██╗██╔══██╗██╔══██║╚════██║   ",
      "  ██║  ██║██████╔╝██████╔╝██║  ██║███████║   ",
      "  ╚═╝  ╚═╝╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝   ",
      "                                             ",
      "███████╗███╗   ██╗██████╗  █████╗ ██████╗ ██╗",
      "██╔════╝████╗  ██║██╔══██╗██╔══██╗██╔══██╗██║",
      "█████╗  ██╔██╗ ██║██║  ██║███████║██████╔╝██║",
      "██╔══╝  ██║╚██╗██║██║  ██║██╔══██║██╔══██╗██║",
      "███████╗██║ ╚████║██████╔╝██║  ██║██║  ██║██║",
      "╚══════╝╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝",
    }
    dashboard.section.header.opts.hl = "DashboardHeader"
    dashboard.section.footer.opts.hl = "DashboardFooter"

    local button, get_icon = require("astronvim.utils").alpha_button, require("astronvim.utils").get_icon
    dashboard.section.buttons.val = {
      button("LDR n  ", get_icon("FileNew", 2, true) .. "New File  "),
      button("LDR f f", get_icon("Search", 2, true) .. "Find File  "),
      button("LDR f o", get_icon("DefaultFile", 2, true) .. "Recents  "),
      button("LDR f w", get_icon("WordFile", 2, true) .. "Find Word  "),
      button("LDR b r", get_icon("FolderOpen", 2, true) .. "Browse files  "),
      button("LDR S l", get_icon("Refresh", 2, true) .. "Last Session  "),
    }
    dashboard.config.layout = {
      { type = "padding", val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) } },
      dashboard.section.header,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
      { type = "padding", val = 2 },
      dashboard.section.footer,
    }
  end,
  config = function(_, opts)
    require("alpha").setup(opts.config)

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      desc = "Add Alpha dashboard footer",
      once = true,
      callback = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
        opts.section.footer.val = { "Endari's NeoVim loaded " .. stats.count .. " plugins  in " .. ms .. "ms" }
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
