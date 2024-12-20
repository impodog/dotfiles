-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd("colorscheme catppuccin")
vim.cmd("source " .. vim.fn.stdpath("config") .. "/options.vim")

-- load refactoring Telescope extension
require("noice").setup({
    presets = { inc_rename = true },
})
