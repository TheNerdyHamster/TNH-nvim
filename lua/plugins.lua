local fn = vim.fn

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
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

    -- LSP
    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-lua/completion-nvim' }
    use { 'kabouzeid/nvim-lspinstall' }

    -- Lua development
    use { 'tjdevries/nlua.nvim' }
    use { 'euclidianAce/BetterLua.vim' }

    -- Vim dispatch
    use { 'tpope/vim-dispatch' }

    -- Vim fugitive
    use { 'tpope/vim-fugitive' }

    -- Gui
    use { 'glepnir/dashboard-nvim' }

end)
