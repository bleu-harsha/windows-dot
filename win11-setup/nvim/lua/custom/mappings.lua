local map = vim.keymap.set

-- ToggleTerm manually with <A-i>
map("n", "<A-i>", function()
  require("toggleterm.terminal").Terminal
    :new({ direction = "float" })
    :toggle()
end, { desc = "Toggle floating terminal" })
