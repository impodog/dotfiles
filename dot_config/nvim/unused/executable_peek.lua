return {
    {
        "toppair/peek.nvim",
        event = { "VeryLazy" },
        build = "deno task --quiet build:fast",
        opts = {
            app = { "browser" },
        },
        keys = {
            { "<leader>Tp", "<cmd>PeekOpen<CR>", desc = "Open markdown preview" },
        },
        config = function()
            vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
            vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
        end,
    },
}
