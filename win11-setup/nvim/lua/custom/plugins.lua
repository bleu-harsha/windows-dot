return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup {
        -- Optional: your preferred settings
        direction = "float", -- or "horizontal", "vertical"
        size = 15,
        open_mapping = [[<A-i>]],
        shading_factor = 2,
      }
    end,
  },
}
