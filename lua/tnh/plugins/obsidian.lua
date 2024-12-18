return {
  {
    "epwalsh/obsidian.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    event = {
      "BufReadPre " .. vim.fn.expand("~") .. "/Documents/notes/*.md",
      "BufNewFile " .. vim.fn.expand("~") .. "/Documents/notes/*.md",
    },
    config = function()
      local obsidian = require("obsidian")

      obsidian.setup({
        workspaces = {
          {
            name = "personal",
            path = "~/Documents/notes",
          },
        },
        follow_url_func = function(url)
          vim.fn.jobstart({ "open", url })
        end,
        ui = {
          enable = true,
          checkboxes = {
            -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
            [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
            ["x"] = { char = "", hl_group = "ObsidianDone" },
            [">"] = { char = "", hl_group = "ObsidianRightArrow" },
            ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
            ["!"] = { char = "", hl_group = "ObsidianImportant" },
          },
        },
      })
    end,
  },
}
