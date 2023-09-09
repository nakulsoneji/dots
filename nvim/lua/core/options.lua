vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.scrolloff = 4

-- for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.cursorline = true

--mouse
vim.o.mousemoveevent = true

--global statusline
vim.opt.laststatus = 3

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.autowrite = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.backspace = "indent,start,eol"

-- Line numbers
vim.wo.number = true

-- causes cmp icons to be different sizes, most likely terminal's fault
-- vim.opt.pumblend = 15
vim.opt.pumheight = 10

vim.opt.signcolumn = 'yes'
-- config this later
--vim.opt.statuscolumn = '%=%C%l %s'
