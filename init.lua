vim.loader.enable()

require("settings")
require("settings.options")
require("settings.keymap")
require("plugins")

vim.cmd("colorscheme " .. (dots.UI.colorscheme.name))
