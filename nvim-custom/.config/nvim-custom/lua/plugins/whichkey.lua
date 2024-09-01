return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>f", group = "Find" },
			{ "<leader>g", group = "Git" },
			{ "<leader>c", group = "Code" },
			{ "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action", mode = { "n", "v" } },
			{ "K", vim.lsp.buf.hover, desc = "Hover Information", mode = "n" },
			{ "gi", vim.lsp.buf.implementation, desc = "Go-To Implementation", mode = "n" },
			{ "gd", vim.lsp.buf.definition, desc = "Go-To Definition", mode = "n" },
			{ "gD", vim.lsp.buf.declaration, desc = "Go-To Declaration", mode = "n" },
			{ "<leader>e", ":lua MiniFiles.open()<cr>", desc = "Open MiniFiles", mode = "n" },
		})
	end,
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
