return {
  "nvim-pack/nvim-spectre",
  opts = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>s", "<Cmd>lua require('spectre').toggle()<CR>", desc = "Spectre: Toggle" },
  },
}
