-- 是否将 tab 替换为 space
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4

require("lsp/cpp")
require("dap/cpp")
