local set = vim.keymap.set

return {
  {
    "stevearc/oil.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("oil").setup({
        columns = { "icon" },
        view_options = {
          show_hidden = true,
        },
      })

      set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
      set("n", "<leader>-", require("oil").toggle_float, { desc = "Open parent directory in floating window" })
    end,
  },
}
