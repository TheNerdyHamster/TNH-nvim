local pid = vim.fn.getpid()

local helper = require("lang.helpers")
local nvim_lsp = require("lspconfig")

local bin = "omnisharp"

nvim_lsp.omnisharp.setup({
	capabilities = helper.capabilities,
	on_attach = helper.on_attach,
	cmd = { bin, "-lsp", "--hostPID", tostring(pid) },
})
