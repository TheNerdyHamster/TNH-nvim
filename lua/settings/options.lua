local cmd = vim.cmd
local o = vim.opt

cmd("syntax enable")
cmd("filetype plugin indent on")
cmd("au TextYankPost * lua vim.highlight.on_yank {on_visual = false}")

-- Clipboard
vim.schedule(function()
  o.clipboard = "unnamedplus"
  o.undofile = true
end)

o.shiftwidth = 2
o.tabstop = 2
o.smartindent = true

o.number = true
o.relativenumber = true

vim.g.mapleader = " "

o.cmdheight = 0

o.scrolloff = 4

o.expandtab = true

o.ignorecase = true
o.smartcase = true

o.splitbelow = true
o.splitright = true

o.hidden = true
o.shiftround = true

o.wildmode = "list:longest"
o.completeopt = "menuone,noselect"


