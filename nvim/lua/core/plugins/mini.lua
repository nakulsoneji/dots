local M = {
  'echasnovski/mini.nvim',
  version = false,
  init = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "help",
        "alpha",
        "dashboard",
        "NvimTree",
        "Trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
      },
      callback = function()
        vim.b.miniindentscope_disable = true
      end,
    })
  end,
  event = "VeryLazy"
}

function M.config()
  require("mini.indentscope").setup({
    options = {
      try_as_border = true,
    },
    symbol = "│"
  })

  require("mini.surround").setup({})

end

return M
