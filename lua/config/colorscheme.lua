local utils = require("utils")

utils.opt("o", "termguicolors", true)
vim.g.nord_contrast = true
vim.g.nord_borders = true
vim.g.nord_disable_background = true
-- vim.g.nord_enable_sidebar_background = true
vim.g.nord_uniform_diff_background = true
require("nord").set()
