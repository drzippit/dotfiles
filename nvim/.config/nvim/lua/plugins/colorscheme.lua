return {
  -- force lazyvim to use catppuccin-mocha
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
  -- Disable tokyonight
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },
  -- install rose-pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    version = false,
    lazy = false,
    priority = 998,
    config = function()
      require("rose-pine").setup({
        variant = "main", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn

        styles = {
          transparency = true,
        },
        vim.cmd.colorscheme("rose-pine-main"),
      })
    end,
  },
  -- install everforest
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 999,
    config = function()
      require("everforest").setup({
        background = "hard",
      })
    end,
  },
  -- Install catppuccin
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        integrations = {
          notify = true,
        },
      })
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
}
