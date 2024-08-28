return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope Find Files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope live grep" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope Buffers" },
			{ "<leader> ", "<cmd>Telescope buffers<cr>", desc = "Telescope Buffers" },
		},
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		keys = {
			{ "<leader>fE", "<cmd>Telescope file_browser<cr>", desc = "Telescope File Browser" },
			{
				"<leader>fe",
				"<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>",
				desc = "Telescope File Explore Current Buffer",
			},
		},
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
