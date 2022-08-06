require("nvim-treesitter.configs").setup({
	ensure_installed = "all",
	ingore_install = { "phpdoc" },
	highlight = {
		enable = true,
	},
	rainbow = {
		enable = true,
	},
})
