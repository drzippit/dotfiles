return {
	{
		"echasnovski/mini.ai",
		version = false,
		event = { "BufReadPre", "BufNewFile" },
		opts = function()
			require("mini.ai").setup()
		end,
	},
	{
		"echasnovski/mini.surround",
		version = false,
		event = { "BufReadPre", "BufNewFile" },
		opts = function()
			require("mini.surround").setup()
		end,
	},
	{
		"echasnovski/mini.animate",
		version = false,
		opts = function()
			require("mini.animate").setup()
		end,
	},
	{
		"echasnovski/mini.cursorword",
		version = false,
		event = { "BufReadPre", "BufNewFile" },
		opts = function()
			require("mini.cursorword").setup()
		end,
	},
	{
		"echasnovski/mini.move",
		version = false,
		event = { "BufReadPre", "BufNewFile" },
		opts = function()
			require("mini.move").setup()
		end,
	},
	{
		"echasnovski/mini.pairs",
		version = false,
		event = { "BufReadPre", "BufNewFile" },
		opts = function()
			require("mini.pairs").setup()
		end,
	},
}
