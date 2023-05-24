return {
  {
    "telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
      {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
        keys = {
          { "<C-p>", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>", silent = true },
        },
        config = function()
          require("telescope").load_extension("file_browser")
        end,
      },
    },
  },
}
