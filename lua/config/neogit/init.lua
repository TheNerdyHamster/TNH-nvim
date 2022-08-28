local neogit = require("neogit")
local utils = require("utils")
-- local group = vim.api.nvim_create_augroup("NeogitCustomEvents", { clear = true })

-- Neogit setup
neogit.setup({
	disable_insert_on_commit = false,
	disable_commit_confirmation = true,
})

-- Keybindings
utils.map("n", "<Leader>gs", "<cmd>Neogit<CR>")
utils.map("n", "<Leader>gc", "<cmd>Neogit commit<CR>")

-- Custom autocommands
-- vim.api.nvim_create_autocmd("User", {
-- 	pattern = "NeogitPushComplete",
-- 	group = group,
-- 	callback = require("neogit").close,
-- })
