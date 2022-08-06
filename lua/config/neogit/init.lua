local neogit = require('neogit')
local utils = require('utils')

neogit.setup{}

utils.map('n', '<Leader>gs', '<cmd>Neogit<CR>')
utils.map('n', '<Leader>gc', '<cmd>Neogit commit<CR>')
-- utils.map('n', '<Leader>gp', '<cmd>Git push<CR>')
-- utils.map('n', '<Leader>gP', '<cmd>Git pull<CR>')
