M = {}

M.setup = function()
  local conform = require("conform")
  conform.setup {
    formatters_by_ft = {
      lua = { "stylua" },
      go = { "goimports", "gofmt" },
    },
  }

  conform.formatters.injected = {
    options = {
      ignore_errors = false,
    }
  }

  vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("tnh-conform", { clear = true }),
    callback = function(args)
      require("conform").format {
        bufnr = args.buf,
        lsp_fallback = false,
        quiet = true,
      }
    end,
  })
end

return M
