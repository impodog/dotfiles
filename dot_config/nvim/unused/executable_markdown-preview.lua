return {
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
        config = function()
            a = b
            vim.g.mkdp_auto_start = 1
            vim.g.mkdp_browser = "firefox-developer-edition"
            vim.g.mkdp_port = "8000"
        end,
    },
}
