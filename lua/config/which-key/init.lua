local wk = require("which-key")

local opts = {
	prefix = "<leader>",
}

local mappings = {
	b = {
		name = "buffer",
		b = { "<cmd>buffers<CR>:buffer<Space>", "Search buffer" },
		c = { "<cmd>BufferClose<CR>", "Close buffer" },
		C = { "<cmd>BufferClose!<CR>", "Kill buffer" },
		p = { "<cmd>BufferPrevious<CR>", "Prev buffer" },
		n = { "<cmd>BufferNext<CR>", "Next buffer" },
		s = { "<cmd>BufferPick<CR>", "Search buffers" },
	},
	f = {
		name = "find",
		b = { "Buffers" },
		f = { "File" },
		g = { "Live grep" },
		h = { "Help tags" },
	},
	w = {
		name = "wiki",
	},
}

wk.register(mappings, opts)
