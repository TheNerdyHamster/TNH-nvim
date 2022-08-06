local utils = require("utils")

require("formatter").setup(
  {
    logging = true,
    log_level = vim.log.levels.WARN,
    filetype = {
      lua = {
        require('formatter.filetypes.lua').stylua,
      },
      ['*'] = {
        require('formatter.filetypes.any').remove_trailing_whitespace
      }
    }
  }
)

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.lua FormatWrite
augroup END
]],
  true
)

-- Bindings
utils.map("n", "<Leader>x", "<cmd>Format<CR>")
