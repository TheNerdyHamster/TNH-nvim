local M = {}

local builtin = require("el.builtin")
local extensions = require("el.extensions")
local subscribe = require("el.subscribe")
local sections = require("el.sections")

M.setup = function()
  require("el").setup({
    generator = function()
      local segments = {}

      table.insert(segments, extensions.mode)
      table.insert(segments, " ")
      table.insert(
        segments,
        subscribe.buf_autocmd("el-git-branch", "BufEnter", function(win, buf)
          local branch = extensions.git_branch(win, buf)
          if branch then
            return branch
          end
        end)
      )
      table.insert(
        segments,
        subscribe.buf_autocmd("el_git_changes", "BufWritePost", function(win, buf)
          local changes = extensions.git_changes(win, buf)
          if changes then
            return changes
          end
        end)
      )
      table.insert(segments, sections.split)
      table.insert(segments, "%f")
      table.insert(segments, sections.split)
      table.insert(segments, "[")
      table.insert(segments, builtin.line_with_width(2))
      table.insert(segments, ":")
      table.insert(segments, builtin.column_with_width(2))
      table.insert(segments, "]")
      table.insert(segments, " ")
      table.insert(
        segments,
        subscribe.buf_autocmd("el_file_icon", "BufRead", function(_, buf)
          return extensions.file_icon(_, buf)
        end)
      )
      table.insert(segments, " ")
      table.insert(segments, builtin.filetype)
      table.insert(segments, " ")
      table.insert(segments, builtin.percentage_through_file)
      table.insert(segments, "%% ")
      return segments
    end,
  })
end

return M
