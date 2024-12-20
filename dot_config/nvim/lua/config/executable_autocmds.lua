-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local spell_group = vim.api.nvim_create_augroup("spell_group", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "lua", "python", "go", "markdown", "rust", "c", "cpp" },
    command = "setlocal spell spelllang=en_us,cjk",
    group = spell_group,
})
vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*", -- disable spellchecking in the embeded terminal
    command = "setlocal nospell",
    group = spell_group,
})
