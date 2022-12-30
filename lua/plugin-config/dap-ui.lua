local dapui = require("dapui")

dapui.setup({
    icons = { expanded = "", collapsed = "", current_frame = "" },
    mappings = {
        -- Use a table to apply multiple mappings
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        edit = "e",
        repl = "r",
        toggle = "t",
    },
    layouts = {
        {
            elements = {
                {
                    id = 'scopes',
                    size = 0.35
                },
                {id = "stacks", size = 0.35},
                {id = "watches", size = 0.15},
                {id = "breakpoints", size = 0.15},
            },
            size = 40,
            position = "left",
        },
        {
            elements = {
                "repl"
            },
            size = 5,
            position = "bottom",
        }
    },

    controls = {enabled = false},
    floating = {
        max_height = nil, -- These can be integers or a float between 0 and 1.
        max_width = nil, -- Floats will be treated as percentage of your screen.
        border = "single", -- Border style. Can be "single", "double" or "rounded"
        mappings = {
            close = { "q", "<Esc>" },
        },
    },
    windows = { indent = 1 },
})

local dap = require("dap")
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open({})
end

dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close({})
    dap.repl.close()
end


dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close({})
    dap.repl.close()
end

require("nvim-dap-virtual-text").setup({
    enabled = true,
    enable_commands = true,
    highlight_changed_variables = true,
    highlight_new_as_changed = false,
    show_stop_reason = true,
    commented = false,
    only_first_definition = true,
    all_references = false,
    filter_references_pattern = '<module',
    virt_text_pos = 'eol',
    all_frames = false,
    virt_lines = false,
    virt_text_win_col = nil
})
