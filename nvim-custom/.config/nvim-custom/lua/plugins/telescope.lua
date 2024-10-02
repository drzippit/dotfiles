return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		lazy = false,
		dependencies = { "nvim-lua/plenary.nvim", "ANGkeith/telescope-terraform-doc.nvim" },
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
						layout_config = {
							height = 0.70,
						},
					},
				},
			})
			require("telescope").load_extension("terraform_doc")
		end,
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope Find Files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope live grep" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope Buffers" },
			{ "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Telescope Old Files" },
			{ "<leader>fC", "<cmd>Telescope colorscheme<cr>", desc = "Telescope Colorschemes" },
			{ "<leader> ", "<cmd>Telescope buffers<cr>", desc = "Telescope Buffers" },
			{
				"<leader>fc",
				"<cmd>lua require('telescope.builtin').find_files({ cwd = '~/.config/nvim-custom/' })<CR>",
				desc = "Telescope config",
			},
		},
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		lazy = true,
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
		lazy = true,
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
