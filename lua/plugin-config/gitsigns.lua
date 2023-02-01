local gitsigns = require('gitsigns')
gitsigns.setup({
    signs = {
        add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
        change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        delete       = {hl = 'GitSignsDelete', text = '-', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        topdelete    = {hl = 'GitSignsDelete', text = '-', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        untracked    = {hl = 'GitSignsAdd',    text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
        changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    },
    signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
    numhl      = true, -- Toggle with `:Gitsigns toggle_numhl`
    linehl     = true, -- Toggle with `:Gitsigns toggle_linehl`
    word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
    watch_gitdir = {
        interval = 1000,
        follow_files = true
    },

    attach_to_untracked = true,
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
    },
    current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',

    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil, -- Use default
    max_file_length = 40000, -- Disable if file is longer than this (in lines)
    preview_config = {
        -- Options passed to nvim_open_win
        border = 'single',
        style = 'minimal',
        relative = 'cursor',
        row = 0,
        col = 1
    },
    yadm = {
        enable = false
    },
    on_attach = function()
        vim.api.nvim_set_keymap("n", "<leader>gj", "<cmd>Gitsigns next_hunk<CR>", {silent = true, noremap = true})
        vim.api.nvim_set_keymap("n", "<leader>gk", "<Cmd>Gitsigns prev_hhunk<CR>", {silent = true, noremap = true})
        vim.api.nvim_set_keymap('n', '<leader>hs', ':Gitsigns stage_hunk<CR>', {silent = true, noremap = true})
        vim.api.nvim_set_keymap('v', '<leader>hs', ':Gitsigns stage_hunk<CR>', {silent = true, noremap = true})
        vim.api.nvim_set_keymap('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', {silent = true, noremap = true})
        vim.api.nvim_set_keymap('v', '<leader>hr', ':Gitsigns reset_hunk<CR>', {silent = true, noremap = true})
        vim.api.nvim_set_keymap('n', '<leader>hS', '<cmd>Gitsigns stage_buffer<CR>', {silent = true, noremap = true})
        vim.api.nvim_set_keymap('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>', {silent = true, noremap = true})
        vim.api.nvim_set_keymap('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<CR>', {silent = true, noremap = true})
        vim.api.nvim_set_keymap('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>', {silent = true, noremap = true})
        vim.api.nvim_set_keymap('n', '<leader>hb', '<cmd>lua require"gitsigns".blame_line{full=true}<CR>', {silent = true, noremap = true})
        vim.api.nvim_set_keymap('n', '<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<CR>', {silent = true, noremap = true})
        vim.api.nvim_set_keymap('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>', {silent = true, noremap = true})
        vim.api.nvim_set_keymap('n', '<leader>hD', '<cmd>lua require"gitsigns".diffthis("~")<CR>', {silent = true, noremap = true})
        vim.api.nvim_set_keymap('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<CR>', {silent = true, noremap = true})
        vim.api.nvim_set_keymap('o', 'ih', ':<C-U>Gitsigns select_hunk<CR>', {silent = true, noremap = true})
        vim.api.nvim_set_keymap('x', 'ih', ':<C-U>Gitsigns select_hunk<CR>', {silent = true, noremap = true})
    end
})
