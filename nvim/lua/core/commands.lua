-- fix html script indentation
vim.cmd([[ let g:html_indent_style1 = "inc" ]])
vim.cmd([[ let g:html_indent_script1 = "inc" ]])
vim.cmd([[ set noswapfile ]])

-- use undercurl
--vim.cmd.highlight('DiagnosticUnderlineError gui=undercurl')
--vim.cmd.highlight('DiagnosticUnderlineWarn gui=undercurl')
--vim.cmd.highlight('DiagnosticUnderlineInfo gui=undercurl')
--vim.cmd.highlight('DiagnosticUnderlineHint gui=undercurl')

vim.fn.sign_define("DiagnosticSignError",
  { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn",
  { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo",
  { text = "󰋼 ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint",
  { text = "󰌵", texthl = "DiagnosticSignHint" })

vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#89b4fa", bg = "NONE", italic = true })
vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#6CC644" })
