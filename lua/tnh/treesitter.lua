local M = {}

M.setup = function()
  print("Setting up treesitter")
  ---@diagnostic disable-next-line: redundant-parameter
  require("nvim-treesitter").setup({
    ensure_install = {
      "c",
      "lua",
      "vim",
      "vimdoc",
      "go",
      "yaml",
      "json",
      "rust",
      "bash",
      "swift",
      "terraform",
      "hcl",
    },
    auto_install = false,
    highlight = {
      enable = true,
      disable = function(_, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          return true
        end
      end,
      additional_vim_regex_highlighting = false,
    },
  })
end

return M
