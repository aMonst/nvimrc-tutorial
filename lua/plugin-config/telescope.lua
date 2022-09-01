require('telescope').load_extension "file_browser"

vim.api.nvim_set_keymap("n", "<leader>ff", "<Cmd>Telescope find_files<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>gg", "<Cmd>Telescope live_grep<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fh", "<Cmd>Telescope oldfiles<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fb", "<Cmd>Telescope file_browser<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fm", "<Cmd>Telescope marks<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fj", "<Cmd>Telescope jumplist<CR>", {noremap = true, silent = true})
