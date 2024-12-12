-- lua/tnh/plugins/mini.lua
return {
  {
    "echasnovski/mini.nvim",
    config = function()
      require("mini.surround").setup()
    end,
  },
}
