if require("cfg.utils").check_lsp_client_active "graphql" then
  return
end
-- npm install -g graphql-language-service-cli
require("lspconfig").graphql.setup { on_attach = require("cfg.lsp").common_on_attach }