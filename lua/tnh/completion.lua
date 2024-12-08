-- tnh/completion.lua

require("tnh.snippets")

local opt = vim.opt

opt.completeopt = { "menu", "menuone", "noselect" }
opt.shortmess:append "c"

local lspkind = require("lspkind")
lspkind.init{}

local kind_formatter = lspkind.cmp_format {
  mode = "symbol_text",
  menu = {
    buffer = "[buf]",
    nvim_lsp = "[LSP]",
    nvim_lua = "[api]",
    path = "[path]",
    luasnip = "[snip]",
  },
}

local cmp = require("cmp")

cmp.setup{
  sources = {
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "buffer" },
    { name = "luasnip" },
  },
  mapping = {
    ["<C-n>"] = cmp.mapping.select_next_item{ behavior = cmp.SelectBehavior.Insert },
    ["<C-p>"] = cmp.mapping.select_prev_item{ behavior = cmp.SelectBehavior.Insert },
    ["<C-y>"] = cmp.mapping(
      cmp.mapping.confirm{
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },
      { "i", "c" }
    ),
  },

  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end,
  },

  formatting = {
    fields = { "abbr", "kind", "menu" },
    expandable_indicator = true,
    format = function(entry, vim_item)
      vim_item = kind_formatter(entry, vim_item)

      return vim_item
    end,
  }
}
