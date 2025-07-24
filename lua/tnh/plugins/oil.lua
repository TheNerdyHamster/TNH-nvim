local set = vim.keymap.set

return {
  {
    "stevearc/oil.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local detail = false
      require("oil").setup({
        columns = { "icon" },
        view_options = {
          show_hidden = true,
        },
        keymaps = {
          ["gd"] = {
            desc = "Toggle file details",
            callback = function()
              detail = not detail
              if detail then
                require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
              else
                require("oil").set_columns({ "icon" })
              end
            end,
          },
        },
      })

      set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
      set("n", "<leader>-", require("oil").toggle_float, { desc = "Open parent directory in floating window" })
    end,
  },
}
