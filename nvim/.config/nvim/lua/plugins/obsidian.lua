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
      -- Optional, if you keep daily notes in a separate directory.
      folder = "notes/dailies",
      -- Optional, if you want to change the date format for the ID of daily notes.
      date_format = "%Y-%m-%d",
      -- Optional, if you want to change the date format of the default alias of daily notes.
      alias_format = "%B %-d, %Y",
      -- Optional, default tags to add to each new daily note created.
      default_tags = { "daily-notes" },
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = nil,
    },
  },
}
