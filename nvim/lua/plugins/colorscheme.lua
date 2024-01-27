return {
  {
    "neanias/everforest-nvim",
    config = function()
      require("everforest").setup({
        background = "soft",
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
