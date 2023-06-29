return {
  -- List of custom colorschemes to install
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,
    priority = 1000,
    opts = {},
  },
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
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = true,
    config = function()
      require("github-theme").setup({
        -- To make sure these changes apply remove ~/.cache/nvim/github-theme folder
        options = {
          -- transparent = true,
          dim_inactive = true,
          styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
            inverse = { -- Inverse highlight for different types
              match_paren = true,
              visual = true,
              search = true,
            },
          },
          modules = {
            nvimtree = true,
          },
        },
      })
    end,
  },
  { "rebelot/kanagawa.nvim", name = "kanagawa", lazy = true },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
}
