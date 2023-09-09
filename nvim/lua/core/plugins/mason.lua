local M = {
  "williamboman/mason.nvim",
  cmd = "Mason"
}

function M.config()
  require("mason").setup()
end

return M

