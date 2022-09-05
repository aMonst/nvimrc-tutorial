-- 自动命令，自动命令组

--function save_session()
--    local curdir = vim.api.nvim_eval([[getcwd()]])
--    local session_file = curdir .. "/Session.vim"
--    vim.cmd([[mksession! ]] .. session_file)
--    local viminfo = curdir .. "/.viminfo"
--    vim.cmd([[wviminfo! ]] .. viminfo)
--end
--
--function load_session()
--    local curdir = vim.api.nvim_eval([[getcwd()]])
--    local session_file = curdir .. "/Session.vim"
--    local viminfo = curdir .. "/.viminfo"
--    file, err = io.open(session_file, "r")
--    if err == nil then
--        file:close()
--        vim.cmd([[source ]] .. session_file)
--    end
--    file, err = io.open(viminfo, "r")
--    if err == nil then
--        file:close()
--        vim.cmd([[rviminfo ]] .. viminfo)
--    end
--end

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

--    local auto_save_session = vim.api.nvim_create_augroup("AUTO_SAVE_SESSION", {clear = true})
--    vim.api.nvim_create_autocmd({"ExitPre"}, {
--        pattern = "*",
--        group = auto_save_session,
--        callback = save_session
--    })
--    vim.api.nvim_create_autocmd({"VimEnter"}, {
--        pattern = "*",
--        group = auto_save_session,
--        callback = load_session
--    })
else
    vim.cmd[[
        augroup NVIMRC
            autocmd!
            autocmd BufWritePost init.lua source $MYVIMRC
            autocmd BufReadPost init.lua set path+=**/*
        augroup END
    ]]

--    vim.cmd[[
--        augroup AUTO_SAVE_SESSION
--            autocmd!
--            autocmd ExitPre * lua save_session()
--            autocmd VimEnter * lua load_session()
--        augroup END
--    ]]
end

