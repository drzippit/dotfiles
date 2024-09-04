return {
	-- "goolord/alpha-nvim",
	-- dependencies = {
	-- 	"echasnovski/mini.icons",
	-- 	"nvim-lua/plenary.nvim",
	-- },
	-- config = function()
	-- 	local alpha = require("alpha")
	-- 	local dashboard = require("alpha.themes.dashboard")
	-- 	local theta = require("alpha.themes.startify")
	--
	-- 	dashboard.section.header.val = {
	-- 		"          .         .                                           .         .           ",
	-- 		"         ,8.       ,8. `8.`888b           ,8'  8 8888          ,8.       ,8.          ",
	-- 		"        ,888.     ,888. `8.`888b         ,8'   8 8888         ,888.     ,888.         ",
	-- 		"       .`8888.   .`8888. `8.`888b       ,8'    8 8888        .`8888.   .`8888.        ",
	-- 		"      ,8.`8888. ,8.`8888. `8.`888b     ,8'     8 8888       ,8.`8888. ,8.`8888.       ",
	-- 		"     ,8'8.`8888,8^8.`8888. `8.`888b   ,8'      8 8888      ,8'8.`8888,8^8.`8888.      ",
	-- 		"    ,8' `8.`8888' `8.`8888. `8.`888b ,8'       8 8888     ,8' `8.`8888' `8.`8888.     ",
	-- 		"   ,8'   `8.`88'   `8.`8888. `8.`888b8'        8 8888    ,8'   `8.`88'   `8.`8888.    ",
	-- 		"  ,8'     `8.`'     `8.`8888. `8.`888'         8 8888   ,8'     `8.`'     `8.`8888.   ",
	-- 		" ,8'       `8        `8.`8888. `8.`8'          8 8888  ,8'       `8        `8.`8888.  ",
	-- 		",8'         `         `8.`8888. `8.`           8 8888 ,8'         `         `8.`8888. ",
	-- 	}
	-- 	-- dashboard.section.buttons.val = {
	-- 	-- 	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	-- 	-- 	dashboard.button("<leader> f f", "  Find file", "<cmd>Telescope find_files<cr>"),
	-- 	-- 	dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
	-- 	-- }
	-- 	alpha.setup(theta.config)
	-- end,
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				theme = "hyper",
				config = {
					header = {
						"          .         .                                           .         .           ",
						"         ,8.       ,8. `8.`888b           ,8'  8 8888          ,8.       ,8.          ",
						"        ,888.     ,888. `8.`888b         ,8'   8 8888         ,888.     ,888.         ",
						"       .`8888.   .`8888. `8.`888b       ,8'    8 8888        .`8888.   .`8888.        ",
						"      ,8.`8888. ,8.`8888. `8.`888b     ,8'     8 8888       ,8.`8888. ,8.`8888.       ",
						"     ,8'8.`8888,8^8.`8888. `8.`888b   ,8'      8 8888      ,8'8.`8888,8^8.`8888.      ",
						"    ,8' `8.`8888' `8.`8888. `8.`888b ,8'       8 8888     ,8' `8.`8888' `8.`8888.     ",
						"   ,8'   `8.`88'   `8.`8888. `8.`888b8'        8 8888    ,8'   `8.`88'   `8.`8888.    ",
						"  ,8'     `8.`'     `8.`8888. `8.`888'         8 8888   ,8'     `8.`'     `8.`8888.   ",
						" ,8'       `8        `8.`8888. `8.`8'          8 8888  ,8'       `8        `8.`8888.  ",
						",8'         `         `8.`8888. `8.`           8 8888 ,8'         `         `8.`8888. ",
						"",
						"",
					},
					shortcut = {
						{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
						{
							icon = " ",
							icon_hl = "@variable",
							desc = "Files",
							group = "Label",
							action = ":Telescope find_files",
							key = "f",
						},
						-- {
						-- 	desc = " Apps",
						-- 	group = "DiagnosticHint",
						-- 	action = "Telescope app",
						-- 	key = "a",
						-- },
						-- {
						-- 	desc = " dotfiles",
						-- 	group = "Number",
						-- 	action = "Telescope dotfiles",
						-- 	key = "d",
						-- },
					},
					footer = {},
				},
			})
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" }, { "nvim-telescope/telescope.nvim" } },
	},
}
