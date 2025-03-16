return {
  "folke/which-key.nvim",
  opts = {
    spec = {
      { "<leader>o", group = "Obsidian", icon = "" },
      { "<leader>t", group = "Terraform", icon = "󱁢" },
      { "<leader>F", group = "Yazi", icon = "" },
      { "<leader>D", ":lua Snacks.dashboard()<CR>", desc = "Dashboard" },
    },
  },
}
