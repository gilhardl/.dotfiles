return {
  "folke/tokyonight.nvim",
  priority = 1000, -- top priority to start as first plugin (with auto-dark-mode)
  config = function()
    vim.cmd("colorscheme tokyonight-storm")
  end
}
