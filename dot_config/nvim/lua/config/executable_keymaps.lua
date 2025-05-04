-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- Remappings
map("n", "x", '"_x', opt)
map("n", "d", '"_d', opt)
map("v", "d", '"_d', opt)
map("n", "c", '"_c', opt)
map("v", "c", '"_c', opt)
