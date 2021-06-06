local utils = require('utils')

-- Diasble due to conflict with tmux
-- utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights

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
