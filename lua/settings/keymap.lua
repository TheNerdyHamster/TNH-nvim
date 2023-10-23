-- Helper functions
function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end

  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Diasble due to conflict with tmux
-- utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights

-- Esc
map("i", "jk", "<Esc>")
map("i", "kj", "<Esc>")

-- Disable Arrow keys
map("n", "<up>", "<nop>")
map("n", "<down>", "<nop>")
map("i", "<up>", "<nop>")
map("i", "<down>", "<nop>")
map("i", "<left>", "<nop>")
map("i", "<right>", "<nop>")
