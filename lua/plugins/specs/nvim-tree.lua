return {
  "nvim-tree/nvim-tree.lua",
  opts = {
      view = {
        width = 30,
      },
  },
  lazy = true,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>n", "<cmd>NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
    { "<C-n>", "<cmd>NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
  },
  config = function(_, opts)
    require("nvim-tree").setup(opts)
  end,
}
