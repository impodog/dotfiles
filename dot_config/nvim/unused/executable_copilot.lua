return {
    {
        "zbirenbaum/copilot.lua",
        opts = {

            panel = {
                auto_refresh = true,
            },
            suggestion = {
                enabled = true,
                auto_trigger = false,
                keymap = {
                    accept = "<C-a>",
                    accept_word = false,
                    accept_line = false,
                    next = "<C-]>",
                    prev = "<C-[>",
                    dismiss = false,
                },
            },
            filetypes = {
                yaml = true,
                markdown = true,
                gitcommit = true,
                gitrebase = true,
                sh = true,
                rust = true,
                python = true,
                c = true,
                lua = true,
                ["."] = false,
            },
            copilot_node_command = "node", -- Node.js version must be > 18.x
            server_opts_overrides = {},
        },
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        branch = "canary",
        event = "VeryLazy",
        dependencies = {
            { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
            { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
        },
        opts = {
            debug = true, -- Enable debugging
            -- See Configuration section for rest
        },
        keys = {
            {
                "<leader>cca",
                function()
                    local actions = require("CopilotChat.actions")
                    require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
                end,
                desc = "Actions",
            },
            {
                "<leader>cct",
                "<cmd>CopilotChatToggle<CR>",
                desc = "Toggle Window",
            },
            {
                "<leader>cc",
                desc = "copilot chat",
            },
        },
    },
}
