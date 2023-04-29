-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Do not yank with x
vim.keymap.set("n", "x", '"_x')

-- Increment/Decrement on +/-
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- Save on Ctrl + S
vim.keymap.set("n", "<C-s>", "<cmd>:w<cr>", { silent = true })
-- Select All on Ctrl + A
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank whole line to system clipboard" })

-- vim.keymap.set("n", "<leader>-", "<cmd>sp<cr>", { silent = true, desc = ":sp = Horizontal split" })
-- vim.keymap.set("n", "<leader>|", "<cmd>vs<cr>", { silent = true, desc = ":vs = Vertical split" })
