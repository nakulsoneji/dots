local M = {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	cmd = "NvimTreeToggle",
  --[[init = function()
    if vim.fn.argc() == 1 then
      local stat = vim.loop.fs_stat(vim.fn.argv(0))
      if stat and stat.type == "directory" then
        require("nvim-tree")
      end
    end
  end,]]--
}

function M.config()
	require("nvim-tree").setup({
		diagnostics = {
			enable = true,
			icons = {
				error = " ",
				warning = " ",
				info = " ",
				hint = " ",
			},
		},
		actions = {
			open_file = {
				quit_on_open = true,
			},
		},
    prefer_startup_root = true,
    sync_root_with_cwd = true,
    reload_on_bufenter = true,
    respect_buf_cwd = true,
    update_focused_file = {
      enable = true,
      update_cwd = true
    },
	})
end

return M
