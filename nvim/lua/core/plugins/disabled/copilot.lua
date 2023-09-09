local M = {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
}

function M.config()
  require("copilot").setup({
    --[[suggestion = {
      auto_trigger = true,
      debounce = 150,
      keymap = {
        accept = "<Tab>",
      }
    },]]--
    suggestion = {
      enabled = false,
    },
    panel = {
      enabled = false,
    }


  })
end


return M
