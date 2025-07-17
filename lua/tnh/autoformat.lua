M = {}

M.setup = function()
  local conform = require("conform")
  conform.setup({
    formatters_by_ft = {
      lua = { "stylua" },
      go = { "goimports", "gofmt" },
      terraform = { "terraform_fmt" },
    },
  })

  conform.formatters.injected = {
    options = {
      ignore_errors = false,
    },
  }

  vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("tnh-conform", { clear = true }),
    callback = function(args)
      require("conform").format({
        bufnr = args.buf,
        lsp_fallback = true,
        quiet = false,
      })
    end,
  })

  vim.keymap.set({ "n", "v" }, "<leader>cf", function()
    conform.format({
      lsp_fallback = true,
      quite = false,
      timeout_ms = 500,
    })
  end, { desc = "Format file or range" })
end

return M
