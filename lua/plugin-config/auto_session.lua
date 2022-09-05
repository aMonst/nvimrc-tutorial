vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"
require("auto-session").setup({
    log_level = "error",
    auto_session_suppress_dirs = {"~/", "~/Projects", "~/Downloads", "/", "/ect", "/usr"},
    auto_session_enable_last_session = false,
    -- 保存session文件到 ~/.local/share/nvim/sessions目录
    auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
    auto_session_enabled = true,
    auto_save_enabled = nil,
    auto_restore_enabled = nil,
    auto_session_use_git_branch = nil,
    -- the configs below are lua only
    bypass_session_save_file_types = nil
})
