local fn = vim.fn

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	os.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

vim.cmd([[packadd packer.nvim]])
vim.cmd("autocmd BufWritePost plugins.lua PackerCompile") -- Auto compile when there are changes in plugins.lua

return require("packer").startup(function()
	-- Packer
	use({ "wbthomason/packer.nvim", opt = true })

	-- Color Scheme
	use({ "shaunsingh/nord.nvim" })

	-- Fuzzy finder
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
	})

	-- LSP and Completion
	use({ "neovim/nvim-lspconfig" })
	use({ "nvim-lua/lsp_extensions.nvim" })
	use({ "hrsh7th/nvim-compe" })
	use({ "glepnir/lspsaga.nvim" })

	-- Formating
	use({ "mhartington/formatter.nvim" })
	--  use { 'sbdchd/neoformat' }

	-- Snippets
	use({ "hrsh7th/vim-vsnip" })
	use({ "golang/vscode-go" })

	-- Syntax
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use({ "p00f/nvim-ts-rainbow" })

	-- Lua development
	use({ "tjdevries/nlua.nvim", requires = { { "nvim-lua/plenary.nvim" } } })
	use({ "euclidianAce/BetterLua.vim" })

	-- Vim dispatch
	use({ "tpope/vim-dispatch" })

	-- Vim fugitive
	use({ "TimUntersberger/neogit", requires = { { "nvim-lua/plenary.nvim" } } })

	-- Gui
	use({ "glepnir/dashboard-nvim" })

	-- Utils/Extra
	use({ "christoomey/vim-tmux-navigator" })
	use({ "folke/which-key.nvim" })
	use({ "tpope/vim-commentary" })
	use({ "windwp/nvim-autopairs" })
	use({
		"famiu/feline.nvim",
		branch = "master",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	use({
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	use({ "andweeb/presence.nvim" })

	use({ "vimwiki/vimwiki" })
end)
