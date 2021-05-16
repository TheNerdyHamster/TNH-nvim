local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)
vim.g.gruvbox_material_transparent_background = 1
cmd 'colorscheme gruvbox-material'
