-- npm install -g dockerfile-language-server-nodejs
require'lspconfig'.dockerls.setup {on_attach = require'_lsp'.common_on_attach}
