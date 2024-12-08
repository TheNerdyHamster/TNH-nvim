-- lua/tnh/snippets.lua

local set = vim.keymap.set
local ls = require("luasnip")

vim.snippet.expand = ls.lsp_expand

vim.snippet.active = function (filter)
  filter = filter or {}
  filter.direction = filter.direction or 1
  if filter.direction == 1 then
    return ls.expand_or_jumpable()
  else
    return ls.jumpable(filter.direction)
  end
end

vim.snippet.jump = function (direction)
  if direction == 1 then
    if ls.expandable() then
      return ls.expand_or_jump()
    else
      return ls.jumpable(1) and ls.jump(1)
    end
  else
    return ls.jumpable(-1) and ls.jump(-1)
  end
end

vim.snippet.stop = ls.unlink_current

ls.config.set_config {
  history = true,
  updateevents = "TextChanged, TextChangedI",
  override_builtin = true,
}

for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("lua/tnh/snippets/*lua", true)) do
  loadfile(ft_path)()
end

set({ "i", "s" }, "<c-k>", function ()
  return vim.snippet.active{ direction = 1 } and vim.snippet.jump(1)
end, { silent = true })

set({ "i", "s" }, "<c-j>", function ()
  return vim.snippet.active{ direction = -1 } and vim.snippet.jump(-1)
end, { silent = true })
