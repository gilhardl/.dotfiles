return {
  "f-person/auto-dark-mode.nvim",
  priority = 1000, -- top priority to start as first plugin (with colorscheme) 
  config = {
    set_dark_mode = function()
      vim.api.nvim_set_option_value("background", "dark", {})
    end,
    set_light_mode = function()
      vim.api.nvim_set_option_value("background", "light", {})
    end,
    update_interval = 100,
    fallback = "light"
  },
}
