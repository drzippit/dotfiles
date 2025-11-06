return {
  "otavioschwanck/arrow.nvim",
  lazy = true,
  keys = {
    { "\\", "<cmd>Arrow open", desc = "Open Arrow" },
  },
  opts = {
    show_icons = true,
    leader_key = "\\", -- Recommended to be a single key
    buffer_leader_key = "m", -- Per Buffer Mappings
  },
}
