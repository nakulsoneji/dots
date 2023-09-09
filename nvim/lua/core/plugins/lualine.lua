local M = {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
}

function M.config()
  require("lualine").setup({
    options = {
      theme = "auto",
      disabled_filetypes = {
        statusline = {
          "alpha",
        }
      },
      component_separators = {
         left = "│",
        right = "│",
      },
      section_separators = {
        left = "",
        right = "",
      },
      globalstatus = true,
    },
  })
end

return M
