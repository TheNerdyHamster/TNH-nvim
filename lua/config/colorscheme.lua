local utils = require('utils')

utils.opt('o', 'termguicolors', true)
vim.g.nord_contrast = true
vim.g.nord_borders = true
vim.g.nord_disable_background = true
require('nord').set()
