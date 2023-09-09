local M = {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    --"windwp/nvim-ts-autotag"
  },
  build = ":TSUpdate",
  cmd = "TSUpdateSync",
  event = {"BufReadPost", "BufNewFile"}
}

function M.config()
  require("nvim-treesitter.configs").setup({
    auto_install = true,
    highlight = {
      enable = true,
      disable = {"alpha",},
    },
    --[[autotag = {
      enable = true
    },]]--
    indent = {
      enable = true,
      disable = {"html",},
    }

  })
end

return M
