vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter" }, {
  group = vim.api.nvim_create_augroup("tnh-term-open", { clear = true }),
  callback = function()
    if vim.opt.buftype:get() == "terminal" then
      print("Entering terminal")
      vim.cmd(":startinsert")
      vim.opt.number = false
      vim.opt.relativenumber = false
    end
  end,
})

vim.keymap.set("n", "<space>os", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 10)
end)

vim.keymap.set("n", "<space>oS", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("L")
  vim.api.nvim_win_set_width(0, 100)
end)
