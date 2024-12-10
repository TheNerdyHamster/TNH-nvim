local set = vim.keymap.set
return {
  {
    "isakbm/gitgraph.nvim",
    config = function()
      local gitgraph = require("gitgraph")
      ---@type I.GGConfig
      gitgraph.setup({
        hooks = {
          on_select_commit = function(commit)
            vim.notify("DiffviewOpen" .. commit.hash .. "^!")
            vim.cmd(":DiffviewOpen" .. commit.hash .. "^!")
          end,
          on_select_range_commit = function(from, to)
            vim.notify("DiffviewOpen " .. from.hash .. "~1.." .. to.hash)
            vim.cmd(":DiffviewOpen " .. from.hash .. "~1.." .. to.hash)
          end,
        },
      })
      set("n", "<leader>gg", function()
        gitgraph.draw({}, { all = true, max_count = 5000 })
      end, { desc = "GitGraph - Draw" })
    end,
  },
}
