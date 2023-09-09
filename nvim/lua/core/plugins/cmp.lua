local M = {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
		"saadparwaiz1/cmp_luasnip",
		"onsails/lspkind.nvim",
	},
	event = { "InsertEnter", "CmdlineEnter" },
}

function M.config()
	local cmp = require("cmp")
	local cmp_select_opts = { behavior = cmp.SelectBehavior.Select }
	local defaults = require("cmp.config.default")()

	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body)
			end,
		},

		--[[formatting = {
      format = function(entry, item)
        item.menu = ({
          buffer = "[Buffer]",
          nvim_lsp = "[LSP]",
          luasnip = "[Snippet]",
          path = "[Path]",
        })[entry.source.name]

        return item
      end,
    },]]
		--

		window = {
			completion = {
				--border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
				winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel",
			},

			documentation = {
				--border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
				winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
			},
		},

		--[[window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },]]
		--

		experimental = {
			ghost_text = true,
		},

		formatting = {
			fields = { "kind", "abbr", "menu" },
			format = require("lspkind").cmp_format({
				mode = "symbol", -- show only symbol and text annotations
				maxwidth = 50, -- prevent the popup from showing more than provided characters
				--preset = "codicons",
				symbol_map = { Copilot = " " },
				ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead })
			}),
		},

		mapping = cmp.mapping.preset.insert({
			["<CR>"] = cmp.mapping.confirm({ select = true }),
			["<C-y>"] = cmp.mapping.confirm({ select = true }),
			["<C-e>"] = cmp.mapping.abort(),
			["<C-u>"] = cmp.mapping.scroll_docs(-4),
			["<C-d>"] = cmp.mapping.scroll_docs(4),
			["<Up>"] = cmp.mapping.select_prev_item(cmp_select_opts),
			["<Down>"] = cmp.mapping.select_next_item(cmp_select_opts),
			["<C-p>"] = cmp.mapping(function()
				if cmp.visible() then
					cmp.select_prev_item(cmp_select_opts)
				else
					cmp.complete()
				end
			end),
			["<C-n>"] = cmp.mapping(function()
				if cmp.visible() then
					cmp.select_next_item(cmp_select_opts)
				else
					cmp.complete()
				end
			end),
		}),

		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
			{ name = "buffer" },
			{ name = "path" },
		}),

		sorting = defaults.sorting,

		--[[performance = {
      throttle = 550,
    }]]
		--
	})

	cmp.setup.cmdline("/", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = "buffer" },
		},
	})

	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{
				name = "cmdline",
				option = {
					ignore_cmds = { "Man", "!" },
				},
			},
		}),
	})
end

return M
