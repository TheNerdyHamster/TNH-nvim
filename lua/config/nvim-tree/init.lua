local utils = require("utils")

require("nvim-tree").setup({})

vim.g.nvim_tree_side = "right"
vim.g.nvim_tree_auto_ignore_ft = { "dashboard" }
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_add_traoling = 1
vim.g.lsp_diagnostics = 1
vim.g.nvim_tree_special_files = { "README.md", "Dockerfile", "docker-compse.yml" }

utils.map("n", "<Leader>n", "<cmd>NvimTreeToggle<CR>")
utils.map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")
