local utils = require('utils')

utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights

-- Esc
utils.map('i', 'jk', '<Esc>')
utils.map('i', 'kj', '<Esc>')

-- Arrow keys
utils.map('n', '<up>', '<nop>')
utils.map('n', '<down>', '<nop>')
utils.map('i', '<up>', '<nop>')
utils.map('i', '<down>', '<nop>')
utils.map('i', '<left>', '<nop>')
utils.map('i', '<right>', '<nop>')

-- Buffers
utils.map('n', '<Leader>bb', '<cmd>buffers<CR>:buffer<Space>')
utils.map('n', '<Leader>bc', '<cmd>BufferClose<CR>')
utils.map('n', '<Leader>bC', '<cmd>BufferClose!<CR>')
utils.map('n', '<Leader>bp', '<cmd>BufferPrevious<CR>')
utils.map('n', '<Leader>bn', '<cmd>BufferNext<CR>')
utils.map('n', '<Leader>bs', '<cmd>BufferPick<CR>')
