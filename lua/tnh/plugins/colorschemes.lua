-- lua/tnh/plugins/colorschemes.lua

return {
  {
    "folke/tokyonight.nvim",
    config = function()
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
