return {
  -- Plugin that allows easy switching of tmux windows even while in Neovim
  -- Use with tmux's version of this plugin
  {
    "alexghergh/nvim-tmux-navigation",
    keys = {
      { "<C-h>", "<cmd>NvimTmuxNavigateLeft<cr>", desc = "window left" },
      { "<C-l>", "<cmd>NvimTmuxNavigateRight<cr>", desc = "window right" },
      { "<C-j>", "<cmd>NvimTmuxNavigateDown<cr>", desc = "window down" },
      { "<C-k>", "<cmd>NvimTmuxNavigateUp<cr>", desc = "window up" },
    },
    lazy = false,
    opts = {
      disable_while_zoomed = true,
    },
  },
  {
    "mhanberg/output-panel.nvim",
    keys = {
      { "<leader>uo", "<cmd>OutputPanel<cr>", desc = "Toggle LSP output" },
    },
    config = true,
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "iamcco/markdown-preview.nvim",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  -- Prettier code folds
  {

    "anuvyklack/pretty-fold.nvim",
    config = function()
      require("pretty-fold").setup()
    end,
  },
}
