local utils = require("utils")

require("formatter").setup(
  {
    filetype = {
      lua = {
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
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
-- }}}
