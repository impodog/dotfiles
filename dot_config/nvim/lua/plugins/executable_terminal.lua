return {
    {
        "rebelot/terminal.nvim",
        config = function()
            require("terminal").setup({
                open_cmd = "float",
            })
        end,
        keys = {
            {
                "<leader>Tt",
                function()
                    require("terminal.mappings").toggle()
                end,
                desc = "Terminal toggle",
            },
            {
                "<leader>Tn",
                function()
                    require("terminal.mappings").toggle({ open_cmd = "enew" })()
                end,
                desc = "Terminal open in a new window",
            },
            {
                "<leader>Ts",
                function()
                    require("terminal.mappings").toggle({ open_cmd = "split\nenew" })()
                end,
                desc = "Terminal open in a split window",
            },
            {
                "<leader>Tk",
                function()
                    require("terminal.mappings").kill()
                end,
                desc = "Terminal kill",
            },
            {
                "]T",
                function()
                    require("terminal.mappings").cycle_next()
                end,
                desc = "Next terminal",
            },
            {
                "[T",
                function()
                    require("terminal.mappings").cycle_prev()
                end,
                desc = "Prev terminal",
            },
        },
    },
}
