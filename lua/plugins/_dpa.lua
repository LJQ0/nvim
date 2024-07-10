return {
  "mfussenegger/nvim-dap",
  opt = true,
  module = { "dap" },
  config = function()
          local dap = require('dap')
          dap.adapters.codelldb = {
              type = 'server',
              port = 13001,
              executable = {
                -- CHANGE THIS to your path!
                command = '~/.config/nvim/debug/tools/extension/adapter/codelldb',
                args = {"--port", 13001}
            }

                -- On windows you may have to uncomment this:
                -- detached = false,
          }
          dap.configurations.cpp = {
            {
                name = "Launch file",
                type = "codelldb",
                request = "launch",
                program = function()
                  return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = false,
            },
        }
        dap.configurations.c = dap.configurations.cpp
        dap.configurations.rust = dap.configurations.cpp
  end,
}
