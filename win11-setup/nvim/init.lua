vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.o.mouse = "a"
vim.opt.rtp:prepend(lazypath)
vim.api.nvim_set_keymap("i", "<C-v>", '<C-o>"+p', { noremap = true, silent = true })

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },
  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

-- Defer transparency until after theme loads
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    local hl = vim.api.nvim_set_hl
    hl(0, "Normal",           { bg = "none" })
    hl(0, "NormalNC",         { bg = "none" })
    hl(0, "NormalFloat",      { bg = "none" })
    hl(0, "FloatBorder",      { bg = "none" })
    hl(0, "Pmenu",            { bg = "none" })
    hl(0, "PmenuSel",         { bg = "none" })
    hl(0, "TelescopeNormal",  { bg = "none" })
    hl(0, "TelescopeBorder",  { bg = "none" })

    -- Alpha dashboard
    hl(0, "AlphaNormal",      { bg = "none" })
    hl(0, "AlphaHeader",      { bg = "none" })
    hl(0, "AlphaFooter",      { bg = "none" })

    -- NvimTree
    hl(0, "NvimTreeNormal",     { bg = "none" })
    hl(0, "NvimTreeNormalNC",   { bg = "none" })
    hl(0, "NvimTreeVertSplit",  { bg = "none" })

    -- LSP + UI
    hl(0, "FloatTitle",       { bg = "none" })
    hl(0, "WhichKeyFloat",    { bg = "none" })
    hl(0, "CmpNormal",        { bg = "none" })
    hl(0, "CmpBorder",        { bg = "none" })

    -- Optional: split borders
    hl(0, "VertSplit",        { bg = "none" })
  end,
})

require "options"
require "autocmds"

vim.schedule(function()
  require "mappings"
end)
