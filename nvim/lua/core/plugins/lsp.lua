local M = {
	"nakulsoneji/lsp-zero.nvim",
	branch = "v2.x",
	dependencies = {
		-- LSP Support 
    { "neovim/nvim-lspconfig" },
		{ "williamboman/mason-lspconfig.nvim" }, -- Optional
    { "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
    {
      "folke/neodev.nvim",
      opts = {
        library = {
          plugins = false
        },
      }
    },
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
	},
  event = {"BufReadPre", "BufNewFile"}
}

function M.config()
	local lsp = require("lsp-zero").preset({
    name = "lsp-only"
  })

	lsp.on_attach(function(_, bufnr)
		-- see :help lsp-zero-keybindings
		-- to learn the available actions
		lsp.default_keymaps({ bufnr = bufnr })
		local opts = { noremap = true, silent = true, buffer = true }
		vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
		vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
		vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
		vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
		vim.keymap.set("n", "gd", "<cmd>Lspsaga finder<cr>", opts)
		vim.keymap.set("n", "gt", "<cmd>Lspsaga goto_type_definition<cr>", opts)
		vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
		vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<cr>", opts)
		vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<cr>", opts)
	end)

	require("mason-lspconfig").setup({
		automatic_installation = true,
	})
	-- (Optional) Configure lua language server for neovim
  --require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())
  require("lspconfig").lua_ls.setup({
    settings = {
      Lua = {
        workspace = {
          checkThirdParty = false,
        },
      }
    }
  })

	lsp.skip_server_setup({ "rust_analyzer" })

	lsp.setup()

  vim.diagnostic.config({
    severity_sort = true,
    float = {
      border = "none",
      severity_sort = true,
      prefix = "",
      header = ""
    },
    virtual_text = {
      severity = {
        min = vim.diagnostic.severity.WARN
      }
    },
  })

end

return M
