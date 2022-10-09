local lsp_set_keymap = require("keybindings")
-- 定义快捷键
-- 根据官方的提示，这里我们使用 on_attach 表示当前缓冲加载服务端完成之后调用
local on_attach = function(_, bufnr)
    lsp_set_keymap.set_keymap(bufnr)
end

require('lspconfig').sumneko_lua.setup {
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },

    on_attach = on_attach,
}
