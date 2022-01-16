local utils = require('utils')

require('formatter').setup({
  filetype = {
    lua = {
      function()
        return {
          exe = "luafmt",
          args = { "--indent-count", 2, "--stdin" },
          stdin = true
        }
      end
    },
  }
})

vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.go, *.lua undojoin | FormatWrite
augroup END
]], true)

--     autocmd BufWritePre *.go,*.lua,*.sql undojoin | Neoformat
-- Bindings
utils.map('n', '<Leader>x', '<cmd>Format<CR>')
-- }}}
