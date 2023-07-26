-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})

-- This is required due to a pending issue with Telescope and entering files
-- Issues [#559](https://github.com/nvim-telescope/telescope.nvim/issues/559) and [#1337](https://github.com/nvim-treesitter/nvim-treesitter/issues/1337)
vim.api.nvim_create_autocmd({ "BufEnter", "BufNew", "BufWinEnter" }, {
  group = vim.api.nvim_create_augroup("ts_fold_workaround", { clear = true }),
  command = "set foldexpr=nvim_treesitter#foldexpr()",
})

vim.cmd([[
augroup PodfileFileType
  au!
  au BufNewFile,BufRead Podfile,*.podspec set filetype=ruby
augroup END
]])
