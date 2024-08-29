return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		opts = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
				integrations = {
					notify = true,
				},
			})
		end,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
}
