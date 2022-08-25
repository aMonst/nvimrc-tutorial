-- 自动命令，自动命令组
if vim.fn.has "nvim-0.7" then
    -- 保存后自动加载配置文件
    local nvimrc = vim.api.nvim_create_augroup("NVIMRC", {clear = true})
    vim.api.nvim_create_autocmd({"BufWritePost"}, {
        pattern = "init.lua",
        group = nvimrc,
        command = [[source %]]
    })

    vim.api.nvim_create_autocmd({"BufReadPost"}, {
        pattern = "init.lua",
        group = nvimrc,
        callback = function()
            vim.o.path = vim.o.path .. ",**/*"
        end
    })

    --打开终端后自动进入插入模式
    local term_mode = vim.api.nvim_create_augroup("TERM_MODE", {clear = true})
    vim.api.nvim_create_autocmd({"TermOpen"}, {
        pattern = "*",
        group = term_mode,
        command = [[normal i]]
    })
else
    vim.cmd[[
        augroup NVIMRC
            autocmd!
            autocmd BufWritePost init.lua source $MYVIMRC
            autocmd BufReadPost init.lua set path+=**/*
        augroup END
    ]]

    vim.cmd[[
        augroup TERM_MODE
            autocmd!
            autocmd TermOpen * normal i
        augroup END
    ]]
end
