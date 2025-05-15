return {
  -- force lazyvim to use catppuccin-mocha
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin-mocha",
      colorscheme = "sonokai",
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
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        styles = {
          transparency = true,
        },
      })
      vim.cmd.colorscheme("rose-pine")
    end,
  },
  -- install everforest
  {
    "neanias/everforest-nvim",
    version = false,
    enabled = false,
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
    enabled = false,
    priority = 998,
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
  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 100,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.sonokai_transparent_background = 2
      vim.g.sonokai_enable_italic = true
      vim.cmd.colorscheme("sonokai")
    end,
  },
}
