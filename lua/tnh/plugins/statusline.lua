return {
  {
    "tjdevries/express_line.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("tnh.statusline").setup()
    end,
  },
}
