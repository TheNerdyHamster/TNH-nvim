local opt = vim.opt

opt.guicursor = ""
opt.mouse = ""

-- Netrw
vim.g.netrw_keepdir = 1
vim.g.netrw_banner = 1

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.nu = true
opt.relativenumber = true

opt.smartindent = true
opt.wrap = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.hlsearch = true
opt.incsearch = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
opt.undofile = true

opt.updatetime = 50
opt.colorcolumn = "120"

opt.clipboard = "unnamedplus"

opt.conceallevel = 1
