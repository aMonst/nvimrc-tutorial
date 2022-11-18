local lspconfig = require('lspconfig')
local lsp_set_keymap = require("keybindings")
local on_attach = function(client, bufnr)
    lsp_set_keymap.set_keymap(bufnr)
end

lspconfig.clangd.setup {
    on_attach = on_attach
}
