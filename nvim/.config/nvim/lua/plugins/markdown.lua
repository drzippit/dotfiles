return {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {
    code = {
      sign = false,
      width = "block",
      right_pad = 1,
    },
    heading = {
      sign = false,
      icons = {},
    },
    checkbox = {
      enabled = false,
    },
  },
  ft = { "markdown", "norg", "rmd", "org", "codecompanion" },
  config = function(_, opts)
    local render_md = require("render-markdown")
    render_md.setup(opts)
    -- Disable the plugin by default
    render_md.disable()

    Snacks.toggle({
      name = "Render Markdown",
      get = function()
        return require("render-markdown.state").enabled
      end,
      set = function(enabled)
        if enabled then
          render_md.enable()
        else
          render_md.disable()
        end
      end,
    }):map("<leader>um")
  end,
}
