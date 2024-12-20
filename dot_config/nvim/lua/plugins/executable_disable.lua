return {
    -- Harmful configurations
    -- Other disabled
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                --jsonls = {
                --    mason = false,
                --},
                dockerls = {
                    mason = false,
                },
                docker_compose_language_service = {
                    mason = false,
                },
                --eslint = {
                --    mason = false,
                --},
                --pyright = {
                --    mason = false,
                --},
                --yamlls = {
                --    mason = false,
                --},
            },
        },
    },
}
