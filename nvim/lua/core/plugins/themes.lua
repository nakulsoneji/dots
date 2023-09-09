local M = {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
}

function M.config()
	require("catppuccin").setup({
		flavour = "mocha",
		--[[custom_highlights = function(colors)
			return {
				--Pmenu = { bg = colors.base },
				--PmenuSel = { bg = colors.surface0 },
				--NormalFloat = { bg = colors.mantle },
				--FloatBorder = { fg = colors.overlay0, bg = colors.mantle },
				--RenameNormal = { bg = colors.mantle },
			}
		end,]]--
		integrations = {
			lsp_saga = true,
			native_lsp = {
				underlines = {
					errors = { "undercurl" },
					warnings = { "undercurl" },
					information = { "undercurl" },
					hints = { "undercurl" },
				},
			},
      mason = true,
      mini = true,
      noice = true,
      notify = true,
      telescope = {
        --style = "nvchad"
      },
      neotree = true,
		},
	})

	vim.cmd.colorscheme("catppuccin")
end


--[[local M = {
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
  priority = 1000,
}

function M.config()
  require("kanagawa").setup({
    background = {
    }
  })
  vim.cmd.colorscheme("kanagawa")
end]]--


--[[local M = {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
}

function M.config()
  require("tokyonight").setup({
    style="night",
  })
  vim.cmd.colorscheme "tokyonight"
end]]--

return M
