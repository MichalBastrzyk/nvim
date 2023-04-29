return {
  -- List of custom colorschemes to install
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = {
      -- transparent_background = true,
      integrations = {
        treesitter = true,
        gitsigns = true,
        telescope = true,
        neotree = true,
        indent_blankline = {
          enabled = true,
        },
        treesitter_context = true,
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
