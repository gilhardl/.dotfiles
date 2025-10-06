return {
  "folke/tokyonight.nvim",
  priority = 1000, -- top priority to start as first plugin
  config = function()
    vim.cmd("colorscheme tokyonight")
  end
}
