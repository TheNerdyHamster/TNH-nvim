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
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-path" })
	use({ "davidsierradz/cmp-conventionalcommits" })
	use({ "hrsh7th/cmp-nvim-lsp-signature-help" })
	-- use({ "glepnir/lspsaga.nvim" })

	-- Formating
	use({ "mhartington/formatter.nvim" })
	--  use { 'sbdchd/neoformat' }

	-- Snippets
	use({ "hrsh7th/vim-vsnip" })
	use({ "hrsh7th/cmp-vsnip" })
	use({ "golang/vscode-go" })
	use({ "vim-crystal/vim-crystal" })

	-- Syntax
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use({ "p00f/nvim-ts-rainbow" })

	-- Lua development
	use({ "euclidianAce/BetterLua.vim" })

	-- Vim dispatch
	use({ "tpope/vim-dispatch" })

	-- Vim fugitive
	use({ "TimUntersberger/neogit", requires = { { "nvim-lua/plenary.nvim" } } })

	-- Gui
	use({ "glepnir/dashboard-nvim" })

	use({ "nvim-tree/nvim-web-devicons" })
	-- Utils/Extra
	use({ "christoomey/vim-tmux-navigator" })
	use({ "folke/which-key.nvim" })
	use({ "tpope/vim-commentary" })
	use({ "windwp/nvim-autopairs" })
	use({
		"feline-nvim/feline.nvim",
		branch = "master",
		-- requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	use({
		"romgrk/barbar.nvim",
		requires = { "nvim-web-devicons", opt = true },
	})
	use({
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-web-devicons" },
	})

	use({ "andweeb/presence.nvim" })

	use({ "vimwiki/vimwiki" })
end)
