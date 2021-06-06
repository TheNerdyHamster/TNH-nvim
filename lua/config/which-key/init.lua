local wk = require("which-key")

local opts = {
  prefix = "<leader>",
}

local mappings = {
  b = {
    name = 'buffer',
    b = { '<cmd>buffers<CR>:buffer<Space>', 'Search buffer' },
    c = { '<cmd>BufferClose<CR>', 'Close buffer'},
    C = { '<cmd>BufferClose!<CR>', 'Kill buffer'},
    p = { '<cmd>BufferPrevious<CR>', 'Prev buffer'},
    n = { '<cmd>BufferNext<CR>', 'Next buffer'},
    s = { '<cmd>BufferPick<CR>', 'Search buffers'},
  },
  l = {
    name = 'lsp',
    a = { ':Lspsaga code_action<CR>', 'Code Actions' },
    d = { ':Lspsaga preview_definition<CR>', 'Preview definition' },
    f = { ':Lspsaga lsp_finder<CR>', 'Finder' },
    r = { ':Lspsaga rename<CR>', 'Rename' },
    s = { ':Lspsaga signature_help<CR>', 'Signature' },
  }
  
}

wk.register(mappings, opts)
