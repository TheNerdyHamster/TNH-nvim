local helper = require("lang.helpers")
local nvim_lsp = require("lspconfig")

nvim_lsp.sumneko_lua.setup({
	capabilities = helper.capabilities,
	on_attach = helper.on_attach,
	settings = {
		Lua = {
			diagnostics = {
				globals = {
					"vim",
					"table",
					"ipairs",
					"require",
					"use",
				},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})
