-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

-- Center with ctrl + d and ctrl + u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Increment/Decrement on +/-
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- Save on Ctrl + S
vim.keymap.set("n", "<C-s>", "<cmd>:w<cr>", { silent = true })
-- NETRW on Ctrl + P
vim.keymap.set("n", "<C-p>", "<cmd>Ex<cr>", {silent = true })

-- Copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank whole line to system clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>P", [["+P"]], { desc = "Paste from system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p"]], { desc = "Paste from system clipboard" })

-- Navigate on wraped ilnes properly
 vim.api.nvim_set_keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
 vim.api.nvim_set_keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
