local M = {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
  },
  cmd = "Telescope",
  lazy = true,
}

function M.config()
  local telescope = require("telescope")

  telescope.setup({
    defaults = {
      sorting_strategy = "ascending",
      path_display = { "smart" },
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = { prompt_position = "top" },
      },
      prompt_prefix = "   ",
      selection_caret = "❯ "
    },
    pickers = {
      find_files = {
        hidden = true,
      }
    },
    extensions = {
      fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = true,  -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",
      }
    }
  })

  telescope.load_extension("fzf")
  telescope.load_extension("file_browser")
end

return M
