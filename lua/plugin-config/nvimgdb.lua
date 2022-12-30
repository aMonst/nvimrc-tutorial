vim.cmd([[
    let w:nvimgdb_termwin_command = "rightbelow vnew"
    let w:nvimgdb_codewin_command = "vnew"
    let g:nvimgdb_use_find_executables = 0
    let g:nvimgdb_use_cmake_to_find_executables = 0
    let g:nvimgdb_config_override = {
    \ 'sign_breakpoint': [''],
    \ 'sign_current_line': '',
    \ 'key_next': '<F10>',
    \ 'key_step': '<F11>',
    \ 'key_continue': '<F5>',
    \ }
]])

vim.cmd([[
    nnoremap <slient> <expr> <leader>dd ":GdbStart gdb -q " . input("debug file path: ") . "\<ESC>"
]])
StartGdbSession = function()
    vim.api.nvim_command(":belowright GdbCreateWatch backtrace")
    vim.api.nvim_command(":wincmd h")
    vim.api.nvim_command(":belowright GdbCreateWatch info locals")
    vim.api.nvim_command(":set wrap")
    vim.api.nvim_command(":wincmd k")
end

EndGdbSession = function()
    vim.api.nvim_command(":bdelete! backtrace info locals")
end

vim.cmd([[augroup GdbSession
autocmd!
autocmd User NvimGdbStart :lua StartGdbSession()
autocmd User NvimGdbCleanup :lua EndGdbSession()
augroup END]])
