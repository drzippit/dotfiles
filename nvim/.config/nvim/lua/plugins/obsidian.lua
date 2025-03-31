return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  keys = {
    { "<leader>os", ":ObsidianQuickSwitch<cr>", desc = "Obsidian Quick Switch" },
    { "<leader>ot", ":ObsidianToday<cr>", desc = "Obsidian today" },
    { "<leader>oT", ":ObsidianTomorrow<cr>", desc = "Obsidian tomorrow" },
    { "<leader>oy", ":ObsidianYesterday<cr>", desc = "Obsidian yesterday" },
    { "<leader>on", ":ObsidianNew ", desc = "Obsidian new" },
    { "<leader>ow", ":ObsidianWorkspace<cr>", desc = "Obsidian workspace" },
    { "<leader>oo", ":ObsidianOpen<cr>", desc = "Obsidian open" },
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
    notes_subdir = "inbox",
    new_notes_location = "notes_subdir",
    daily_notes = {
      folder = "dailies",
      date_format = "%Y-%m-%d",
      alias_format = "%B %-d, %Y",
      default_tags = { "daily-notes" },
      template = nil,
    },
    -- Optional, customize how note IDs are generated given an optional title.
    ---@param title string|?
    ---@return string
    note_id_func = function(title)
      local current_datetime = os.date("!%d-%m-%Y", os.time() - 0 * 3600)
      local suffix = ""
      if title ~= nil then
        -- If title is given, transform it into valid file name.
        suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        -- If title is nil, just add 4 random uppercase letters to the suffix.
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return current_datetime .. "-" .. suffix
    end,

    -- Optional, customize how note file names are generated given the ID, target directory, and title.
    ---@param spec { id: string, dir: obsidian.Path, title: string|? }
    ---@return string|obsidian.Path The full path to the new note.
    note_path_func = function(spec)
      -- This is equivalent to the default behavior.
      local path = spec.dir / (spec.id .. "_" .. tostring(spec.title))
      return path:with_suffix(".md")
    end,
    -- -- Change the behavior to create the file with the title and not a random string
    -- ---@param spec { id: string, dir: obsidian.Path, title: string|? }
    -- ---@return string|obsidian.Path The full path to the new note.
    -- note_path_func = function(spec)
    --   local path = spec.dir / tostring(spec.title)
    --   return path:with_suffix(".md")
    -- end,
  },
}
