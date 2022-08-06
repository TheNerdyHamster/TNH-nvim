local utils = require('utils')

utils.map('n', '<Leader>ff', '<cmd>lua require("telescope.builtin").find_files<CR>')
utils.map('n', '<Leader>fg', '<cmd>lua require("telescope.builtin").live_grep<CR>')
utils.map('n', '<Leader>fb', '<cmd>lua require("telescope.builtin").buffers<CR>')
utils.map('n', '<Leader>fh', '<cmd>lua require("telescope.builtin").help_tags<CR>')
