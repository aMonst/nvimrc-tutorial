-- 配置文件入口,主要负责加载其他配置文件
require("basic")
require("keybindings")
require("autocmd")
require("plugins")
require("plugin-config/tokyonight")
require("plugin-config/vscode")

-- 启用主题
vim.cmd[[colorscheme tokyonight]]
-- vim.cmd[[colorscheme vscode]]
