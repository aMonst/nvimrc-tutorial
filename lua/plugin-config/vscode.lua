-- 使用 dark 主题
vim.o.background = 'dark'

local c = require('vscode.colors')
require('vscode').setup({
    -- 允许透明背景
    transparent = true,
    -- 注释使用斜体
    italic_comments = true,

    -- 禁止使用 nvim-tree 背景色
    disable_nvimtree_bg = true,
    -- 重写部分元素配色
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },
})
