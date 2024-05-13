return {
  "nvim-pack/nvim-spectre",
  cmd = "Spectre",
  opts = { open_cmd = "noswapfile vnew" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>ss", "<Cmd>lua require('spectre').toggle()<CR>", desc = "Spectre: Toggle" },
  },
}
