-- Set map leader to space
vim.g.mapleader = ' '

local fn = vim.fn
local execute = vim.api.nvim_command

-- Default settings
require('settings')

-- Key maps
require('keymaps')

-- Plugins
require('plugins')


-- Configs
require('config')
