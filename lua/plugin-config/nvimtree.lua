require("nvim-tree").setup({
    filters = {
        dotfiles = true,
        custom = {
            ".git/"
        },

        exclude = {
            ".gitignore"
        },
    },
    git = {
        enable = true
    },
--    仅起到演示作用，不推荐这样设置
--    view = {
--        mappings = {
--            list = {
                -- 定义快捷键
--                {key = "%", action = "create"},
--                {key = "d", action = "create"},
--                {key = "R", action = "rename"},
--                {key = "D", action = "remove"}
--            }
--        },
--    },
})
vim.api.nvim_set_keymap("n", "<F2>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
