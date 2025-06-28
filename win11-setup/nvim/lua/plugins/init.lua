return {
  { "Pocco81/auto-save.nvim",
  lazy = false,
  },
  { "mg979/vim-visual-multi",
  lazy = false,
  },
  {
    "kylechui/nvim-surround" ,
    lazy = false,
  },
  { "ojroques/nvim-osc52", lazy = false,
  },
  {
    "karb94/neoscroll.nvim",
    lazy = false,
  },

  { "iamcco/markdown-preview.nvim", build = "cd app && npm install",
   lazy = false,
   },
     {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup()
    end,
  },
   {
    "goolord/alpha-nvim",
    config = function()
      require("alpha").setup(require("alpha.themes.dashboard").config)
    end,
    lazy = false,
    priority = 100,
  },
  {
    "minty", -- This looks like a placeholder. Replace with a valid plugin name if needed.
  },
  {
    "lewis6991/gitsigns.nvim", -- corrected with proper GitHub repo
    lazy = false,
  },
  {
    "folke/which-key.nvim", -- corrected with actual plugin path
    lazy = false,
  },
  {
    "nvim-telescope/telescope.nvim", -- corrected
    lazy = false,
  },
  {
    "nyoom-engineering/oxocarbon.nvim", -- corrected path
    lazy = false,
    priority = 1000,
  },
  {
    "stevearc/conform.nvim",
    -- event = "BufWritePre", -- uncomment for format on save
    opts = require("configs.conform"),
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lspconfig")
    end,
  },
  {
    "wakatime/vim-wakatime",
    lazy = false, -- load immediately
  },

  -- Optional plugins you can enable later:
  -- {
  --   import = "nvchad.blink.lazyspec"
  -- },

  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = {
  --     ensure_installed = {
  --       "vim", "lua", "vimdoc",
  --       "html", "css"
  --     },
  --   },
  -- },
}
