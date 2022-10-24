local dap = require('dap')

dap.adapters.python = {
    type = 'executable';
    command = "/usr/bin/python3.8";
    args = {'-m', 'debugpy.adapter'};
}

dap.configurations.python = {
    {
        type = "python";
        request = "launch";
        name = "launch file";

        program = "${file}";
        pythonPath = function ()
            return "/usr/bin/python3.8"
        end
    },
}
