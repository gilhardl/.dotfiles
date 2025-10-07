return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function ()
    -- recomended settings from documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    local nvim_tree = require("nvim-tree")

    nvim_tree.setup({
      view = {
       width = 35,
       relativenumber = true,
      },
      -- folders arrow icons
      renderer = {
       indent_markers = {
         enable = true,
       },
       icons = {
         glyphs = {
           folder = {
             arrow_closed = "",
             arrow_open = "",
           },
         },
       },
      },
      -- disable window_picker for explorer to work well with window split
      actions = {
       open_file = {
         window_picker = {
           enable = false,
         },
       },
      },
      filters = {
       custom = {
         ".DS_Store",
       },
      },
      git = {
       ignore = false,
      },
    })
  end
}
