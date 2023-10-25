return {
  "nathom/filetype.nvim",
  lazy = false,
  opts = {
    overrides = {
      extensions = {
        tf = "terraform",
        tfvars = "terraform",
        tfstate = "json"
      }
    },
  },
  config = function(_, opts)
    require("filetype").setup(opts)
  end,
}
