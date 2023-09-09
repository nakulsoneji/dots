local map = vim.keymap.set
local utils = require("core.utils")

map('n', '<leader>ff', "<cmd>Telescope find_files<cr>", {})
map('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", {})
map('n', '<leader>fb', "<cmd>Neotree toggle source=buffers<cr>", {})
map('n', '<leader>fh', "<cmd>Telescope help_tags<cr>", {})
map('n', '<leader>fo', "<cmd>Telescope oldfiles")
-- telescope file_explorer
map('n', '<leader>fe', "<cmd>Telescope file_browser<cr>", {})


map('n', '<leader>ft', "<cmd>Neotree toggle<cr>", {})

map({'n','t'}, '<A-d>', '<cmd>Lspsaga term_toggle<cr>', {})
