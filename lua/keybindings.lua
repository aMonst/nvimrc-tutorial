-- 快捷键配置
-- 设置 leader key 和 localleader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 翻页操作
vim.api.nvim_set_keymap("n", "<C-f>", "10jzz", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-b>", "10kzz", {noremap = true, silent = true})

-- 多窗口
-- 窗口操作
vim.api.nvim_set_keymap("n", "sv", ":vsp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sh", ":sp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sc", ":close<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "so", ":only<CR>", {noremap = true, silent = true})
-- 多窗口跳转
vim.api.nvim_set_keymap("n", "<leader>h", "<C-w>h", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>l", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>j", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>k", {noremap = true, silent = true})

-- 其他有用的绑定
-- 使用 <C-u> 将光标所在单词转化为全大写
vim.api.nvim_set_keymap("i", "<C-u>", "<esc>viwUwa", {noremap = true, silent = true})
-- 使用 <C-l> 将光标所在单词转化为全小写
vim.api.nvim_set_keymap("i", "<C-l>", "<esc>viwuwa", {noremap = true, silent = true})
-- 快速打开vimrc文件
vim.api.nvim_set_keymap("n", "<leader>ee", ":vs $MYVIMRC<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>ss", ":source $MYVIMRC<CR>", {noremap = true, silent = true})
-- 删除当前光标所在单词
vim.api.nvim_set_keymap("n", "dw", "diw", {noremap = true, silent = true})
-- 可视模式下可以快速移动缩进多行文本
vim.api.nvim_set_keymap("v", ">>", ">>gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<<", "<<gv", {noremap = true, silent = true})
