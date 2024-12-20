return {
    {
        "ldelossa/nvim-dap-projects",
        opts = {},
        config = function()
            require("nvim-dap-projects").search_project_config()
        end,
        keys = {
            { "<F5>", "<cmd>DapContinue<cr>", desc = "Start / Continue Debugging" },
            { "<F10>", "<cmd>DapStepOver<cr>", desc = "Step Over" },
            { "<F11>", "<cmd>DapStepInto<cr>", desc = "Step Into" },
            { "<F12>", "<cmd>DapStepOut<cr>", desc = "Step Out" },
            { "<leader>B", "<cmd>DapToggleBreakpoint<cr>", desc = "Toggle Breakpoint" },
        },
    },
}
