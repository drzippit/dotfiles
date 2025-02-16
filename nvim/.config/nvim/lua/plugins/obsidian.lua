return {
  "epwalsh/obsidian.nvim",
  version = "*",
  keys = {
    { "<leader>os", ":ObsidianQuickSwitch<cr>", desc = "Obsidian Quick Switch" },
    { "<leader>ot", ":ObsidianToday<cr>", desc = "Obsidian today" },
    { "<leader>oT", ":ObsidianTomorrow<cr>", desc = "Obsidian tomorrow" },
    { "<leader>oy", ":ObsidianYesterday<cr>", desc = "Obsidian yesterday" },
    { "<leader>on", ":ObsidianNew ", desc = "Obsidian new" },
    { "<leader>ow", ":ObsidianWorkspace<cr>", desc = "Obsidian workspace" },
  },
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/Documents/notes/personal",
      },
      {
        name = "work",
        path = "~/Documents/notes/work",
      },
    },
    daily_notes = {
      folder = "notes/dailies",
      date_format = "%Y-%m-%d",
      alias_format = "%B %-d, %Y",
      default_tags = { "daily-notes" },
      template = nil,
    },
    -- Change the behavior to create the file with the title and not a random string
    ---@param spec { id: string, dir: obsidian.Path, title: string|? }
    ---@return string|obsidian.Path The full path to the new note.
    note_path_func = function(spec)
      local path = spec.dir / tostring(spec.title)
      return path:with_suffix(".md")
    end,
  },
}
