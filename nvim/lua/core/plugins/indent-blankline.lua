local M = {
  "lukas-reineke/indent-blankline.nvim",
  event = {"BufReadPost", "BufNewFile"}
}

function M.config()
  require("indent_blankline").setup({
    show_current_context = false,
  })
end

return M

