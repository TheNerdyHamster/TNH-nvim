local set = vim.keymap.set
local k = vim.keycode

-- Better movement
set("n", "<c-k>", "<c-w><c-k>")
set("n", "<c-j>", "<c-w><c-j>")
set("n", "<c-h>", "<c-w><c-h>")
set("n", "<c-l>", "<c-w><c-l>")

-- Disable Arrow keys
set("n", "<up>", "<nop>")
set("n", "<down>", "<nop>")
set("n", "<left>", "<nop>")
set("n", "<right>", "<nop>")
set("i", "<up>", "<nop>")
set("i", "<down>", "<nop>")
set("i", "<left>", "<nop>")
set("i", "<right>", "<nop>")

-- Execution of lua
set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Source the current file" })
set("n", "<leader>x", ":.lua<CR>", { desc = "Source the current line" })
set("v", "<leader>x", ":lua<CR>", { desc = "Source the current selection" })

set("i", "jk", "<Esc>")
set("i", "kj", "<Esc>")

-- Move highligthed blocks around
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

-- Better copy/paste and delete
set("x", "<leader>p", [["_dP]])
set({ "n", "v" }, "<leader>d", [["_d]])
set({ "n", "v" }, "<leader>y", [["+y]])
set("n", "<leader>Y", [["+Y]])

-- Custom paster buffers
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

-- -- Quick fix menu
-- set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Extra bindings
set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true })

-- Toggle hlsearch if active otehrwise just "enter"
set("n", "<CR>", function()
  if vim.v.hlsearch == 1 then
    vim.cmd.nohl()
    return ""
  else
    return k("<CR>")
  end
end, { expr = true })

-- Control size of windows
set("n", "<M-,>", "<c-w>5<")
set("n", "<M-.>", "<c-w>5>")
set("n", "<M-t>", "<c-w>+")
-- TODO: Find out why this dosnt work correctly
set("n", "<M-s>", "<c-w>-")
