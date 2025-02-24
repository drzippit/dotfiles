return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- change a keymap
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader> ", "<cmd>Telescope buffers<cr>", desc = "Telescope Buffers" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope Grep" },
  },
}
