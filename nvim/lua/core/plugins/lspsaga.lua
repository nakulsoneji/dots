local M = {
  'nvimdev/lspsaga.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons'     -- optional
  },
  event = {"BufReadPre", "BufNewFile"}
}

function M.config()
  require("lspsaga").setup({
    ui = {
      border = 'rounded',
    },
    lightbulb = {
      enable = false
    },
    diagnostic = {
      show_code_action = false,
    },
    hover = {
      open_link = 'ff',
      open_cmd = '!firefox'
    },
    outline = {
      layout = 'float',
    },
  })
end

return M
