return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
      require("todo-comments").setup()
    end
  },
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        width = .75,
        height = 1,
        options = {
          number = true,
          relativenumber = true,
          cursorline = true,
          list = true,
        }
      },
      plugins = {
        options = { enabled = true },
        tmux = { enabled = false },
        alacritty = { enabled = true }
      }
    },
  }
}
