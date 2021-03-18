-- npm i -g pyright
require'lspconfig'.pyright.setup{
    on_attach = require'_lsp'.common_on_attach,
}
