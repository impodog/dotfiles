return {
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            -- Enable transparent background
            transparent = false,
            -- Reduce the overall saturation of colours for a more muted look
            --saturation = 1, -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)
            -- Enable italics comments
            italic_comments = true,
            -- Replace all fillchars with ' ' for the ultimate clean look
            hide_fillchars = true,
            -- Apply a modern borderless look to pickers like Telescope, Snacks Picker & Fzf-Lua
            borderless_pickers = false,
        },
    },
    {
        { "navarasu/onedark.nvim", opts = { style = "cool" } },
        { "bluz71/vim-nightfly-colors", name = "nightfly" },
        { "EdenEast/nightfox.nvim" },
        { "dasupradyumna/midnight.nvim" },
        { "JoosepAlviste/palenightfall.nvim" },
        { "Mofiqul/vscode.nvim" },
        { "polirritmico/monokai-nightasty.nvim" },
        enabled = false,
    },
}
