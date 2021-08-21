-- Install packer
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end
 
-- Set map leader to space
vim.g.mapleader = ' '

-- Default settings
require('settings')

-- Key maps
require('keymaps')

-- Plugins
require('plugins')

-- LSP
require('lang')

-- Configs
require('config')
