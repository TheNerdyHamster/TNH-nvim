return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "lua", "query", "yaml", "json" },
    auto_install = true,
    highlight = {
      enable = true
    },
    indent = {
      enable = true
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
  event = { "BufReadPost", "BufNewFile" },
}
