-- 配置文件入口,主要负责加载其他配置文件
require("basic")
require("keybindings")
require("autocmd")
require("plugins")
require("plugin-config/tokyonight")
require("plugin-config/vscode")
require("plugin-config/buffer")
require("plugin-config/nvimtree")
require("plugin-config/lualine")
require("plugin-config/dashboard")
require("plugin-config/whichkey")
require("plugin-config/toggleterm")
require("plugin-config/telescope")
require("plugin-config/auto_session")
require("plugin-config/treesitter")
require("plugin-config/nvim_lsp_install")

-- 启用主题
vim.cmd[[colorscheme tokyonight]]
-- vim.cmd[[colorscheme vscode]]

-- 自定义状态栏(使用 lualine 插件后，该部分代码取消)
-- function get_mode()
--     local mode = vim.api.nvim_eval([[mode()]])
--     if mode == "n" then
--         return "Normal"
--     elseif mode == "v" then
--         return "Visual"
--     elseif mode == "i" then
--         return "Insert"
--     else
--         return ""
--     end
-- end
-- 
-- vim.o.statusline = "mode|%f%m|%l:%L%=" .. vim.g.encoding .. "|%y"
-- 
-- local status_line = vim.api.nvim_create_augroup("SET_STATUS_LINE", {clear = true})
-- 
-- -- 打开时获取当前模式，并初始化
-- vim.api.nvim_create_autocmd({"ModeChanged"}, {
--     pattern = "*",
--     group = status_line,
--     callback = function()
--         local win_id = vim.api.nvim_eval([[win_getid()]]) --获取当前window id
--         vim.wo[win_id].statusline = get_mode() .. "|%f%m|%l:%L%=" .. vim.g.encoding .. "|%y"
--     end
-- })
