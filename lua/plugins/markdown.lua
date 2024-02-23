return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "richardbizik/nvim-toc",
    ft = { "markdown" },
    config = function ()
      require("nvim-toc").setup()
    end
  }
}
