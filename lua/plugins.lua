local fn = vim.fn

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  os.execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function()

  -- Packer
  use { 'wbthomason/packer.nvim', opt = true }

  -- Color Scheme
  use { 'sainnhe/gruvbox-material' }

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{ 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' }}
  }

  -- LSP and Completion
  use { 'neovim/nvim-lspconfig' }
  use { 'hrsh7th/nvim-compe' }

  -- Snippets
  use { 'hrsh7th/vim-vsnip' }
  use { 'golang/vscode-go' }

  -- Syntax
  use { 'nvim-treesitter/nvim-treesitter' }

  -- Lua development
  use { 
      'tjdevries/nlua.nvim',
      requires = {{ 'nvim-lua/plenary.nvim' }}
  }
  use { 'euclidianAce/BetterLua.vim' }

  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Vim fugitive
  use { 'tpope/vim-fugitive' }

  -- Gui
  use { 'glepnir/dashboard-nvim' }

  -- Utils/Extra
  use { 'christoomey/vim-tmux-navigator' }
  use { 'tpope/vim-commentary' }
  use {
      'glepnir/galaxyline.nvim',
      branch = 'main',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use { 
      'kyazdani42/nvim-tree.lua',
      requires = { 'kyazdani42/nvim-web-devicons' }
  }

  use { 'andweeb/presence.nvim' }
end)
