return {
  "aserowy/tmux.nvim",
  lazy = false,
  config = function(_, _)
    require("tmux").setup()
  end,
}
