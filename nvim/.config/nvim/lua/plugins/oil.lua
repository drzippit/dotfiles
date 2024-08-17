return {
    "stevearc/oil.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    lazy = true,
    config = function()
      require("oil").setup()
    end,
  }
