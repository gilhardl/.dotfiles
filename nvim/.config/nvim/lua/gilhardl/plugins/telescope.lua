return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,  -- move to prev result
            ["<C-j>"] = actions.move_selection_next,      -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
        -- Show hidden files but respect .gitignore
        file_ignore_patterns = { "^.git/", "node_modules" },
      },
      pickers = {
        find_files = {
          hidden = true,  -- show hidden files
          -- Use fd if available for better gitignore support
          find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
        },
        live_grep = {
          additional_args = function()
            return { "--hidden", "--glob", "!.git/*" }
          end,
        },
        grep_string = {
          additional_args = function()
            return { "--hidden", "--glob", "!.git/*" }
          end,
        },
      },
    })

    telescope.load_extension("fzf")
  end
}
