-- lua/tnh/telescope.lua

local data = assert(vim.fn.stdpath "data")
local set = vim.keymap.set

require("telescope").setup{
  extensions = {
    wrap_result = true, 
    fzf = {},
    history = {
      path = vim.fs.joinpath(data, "telescope_history.sqlite3"),
      limit = 100,
    },
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {},
    }
  }
}

pcall(require("telescope").load_extension, "smart_history")
pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")

local builtin = require("telescope.builtin")
set("n", "<leader>fd", builtin.find_files)
set("n", "<leader>ft", function()
  return builtin.git_files { cwd = vim.fn.expand "%:h" }
end)
set("n", "<leader>fh", builtin.help_tags)
set("n", "<leader>fk", builtin.keymaps)
set("n", "<leader>fb", builtin.buffers)
set("n", "<leader>f/", builtin.current_buffer_fuzzy_find)
set("n", "<leader>ps", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
set("n", "<leader>fa", function()
  builtin.find_files { cwd = vim.fs.joinpath(vim.fn.stdpath "data", "lazy") }
end)
set("n", "<leader>pws", function()
  local word = vim.fn.expand("<cword>")
  builtin.grep_string({ search = word })
end)
set("n", "<leader>pWs", function()
  local word = vim.fn.expand("<cWORD>")
  builtin.grep_string({ search = word })
end)
