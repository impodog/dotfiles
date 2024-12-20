return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {
            check_ts = true,
            map_c_h = true, -- Map the <C-h> key to delete a pair
            map_c_w = true, -- map <c-w> to delete a pair if possible
            fast_wrap = {},
        },
        config = function()
            local cmp_autopairs = require("nvim-autopairs.completion.cmp")
            local cmp = require("cmp")
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
            require("nvim-autopairs").remove_rule("'")
        end,
    },
}
