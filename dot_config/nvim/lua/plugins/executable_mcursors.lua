return {
    "brenton-leighton/multiple-cursors.nvim",
    version = "*", -- Use the latest tagged version
    opts = {}, -- This causes the plugin setup function to be called
    keys = {
        { "<A-Down>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "i" } },
        { "<A-Up>", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "n", "i" } },
        --{ "<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>", mode = { "n", "i" } },
        --{ "<Leader>a", "<Cmd>MultipleCursorsAddMatches<CR>", mode = { "n", "x" } },
        --{ "<Leader>A", "<Cmd>MultipleCursorsAddMatchesV<CR>", mode = { "n", "x" } },
        --{ "<Leader>d", "<Cmd>MultipleCursorsAddJumpNextMatch<CR>", mode = { "n", "x" } },
        --{ "<Leader>D", "<Cmd>MultipleCursorsJumpNextMatch<CR>" },
        --{ "<Leader>l", "<Cmd>MultipleCursorsLockToggle<CR>", mode = { "n", "x" } },
    },
}
