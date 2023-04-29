return {
  -- List of custom colorschemes to install
  { "catppuccin/nvim", name = "catppuccin", lazy = true },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
