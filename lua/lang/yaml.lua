local helper = require('lang.helpers')
local nvim_lsp = require('lspconfig')

nvim_lsp.yamlls.setup ({
  capabilities = helper.capabilities;
  on_attach = helper.on_attach;
  init_options = {
    onlyAnalyzeProjectsWithOpenFiles = true;
    closingLabels = true;
  };
})
