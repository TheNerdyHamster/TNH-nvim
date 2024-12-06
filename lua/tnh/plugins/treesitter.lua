return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("tnh.treesitter").setup()
    end,
  }
}
