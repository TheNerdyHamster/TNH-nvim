local helper = require('lang.helpers')
local nvim_lsp = require('lspconfig')

nvim_lsp.gopls.setup {
  capabilities = helper.capabilities;
  on_attach = helper.on_attach;
}
