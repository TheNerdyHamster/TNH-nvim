return {
  "folke/trouble.nvim",
  opts = {},
  cmd = "Trouble",
  keys = {
    {
      "<leader>td",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Toggle Diagnostics",
    },
    {
      "<leader>tD",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Toggle buffer Diagnostics",
    },
    {
      "<leader>ts",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Toggle symbols",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Toggle symbols",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false<cr>",
      desc = "Toggle LSP Definitions / references / ...",
    },
  },
}
