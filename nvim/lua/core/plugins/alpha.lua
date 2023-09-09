local M = {
  "goolord/alpha-nvim",
  event = "VimEnter"
}

function M.config()
  local alpha = require'alpha'
  local dashboard = require'alpha.themes.dashboard'
  dashboard.section.header.val = {
    [[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
    [[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
    [[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
    [[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
    [[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
    [[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
  }

  dashboard.section.buttons.val = {
    dashboard.button( "SPC n  ", "  New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "SPC f f", "  Find Files" , ":Telescope find_files <CR>"),
    dashboard.button( "SPC f g", "  Live Grep", ":Telescope live_grep <CR>"),
    dashboard.button( "SPC f e", "  Browse Files", ":Telescope file_browser <CR>"),
    dashboard.button( "SPC f o", "  Recent Files", ":Telescope oldfiles <CR>"),
    dashboard.button( "SPC f h", "󰋖  Help Tags", ":Telescope help_tags <CR>"),
  }

  dashboard.config.layout = {
    { type = "padding", val = 5 },
    dashboard.section.header,
    { type = "padding", val = 5 },
    dashboard.section.buttons,
    { type = "padding", val = 3 },
    dashboard.section.footer,
  }

  local fortune = require("alpha.fortune")
  dashboard.section.footer.val = fortune()

  dashboard.config.opts.noautocmd = false

  alpha.setup(dashboard.config)
end

return M
