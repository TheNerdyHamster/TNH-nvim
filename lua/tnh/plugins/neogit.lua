local set = vim.keymap.set
return {
  {
    "neogitorg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    config = function()
      local neogit = require("neogit")
      neogit.setup({})

      set("n", "<leader>gs", function()
        neogit.open()
      end)
    end,
  },
}
