return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>b", group = "Buffer" }, --TODO: Buffer keybinds
			{ "<leader>f", group = "Find" },
			{ "<leader>g", group = "Git" },
			{ "<leader>c", group = "Code" },
			{
				"<leader>ca",
				vim.lsp.buf.code_action,
				desc = "Code Action",
				mode = { "n", "v" },
			},
			{
				"<leader>cf",
				desc = "Code Format",
				mode = { "n", "v" },
			},
			{
				"K",
				vim.lsp.buf.hover,
				desc = "Hover Information",
				mode = "n",
			},
			{
				"gi",
				vim.lsp.buf.implementation,
				desc = "Go-To Implementation",
				mode = "n",
			},
			{
				"gd",
				vim.lsp.buf.definition,
				desc = "Go-To Definition",
				mode = "n",
			},
			{
				"gD",
				vim.lsp.buf.declaration,
				desc = "Go-To Declaration",
				mode = "n",
			},
			{
				"<leader>e",
				":lua MiniFiles.open()<cr>",
				desc = "Open MiniFiles",
				mode = "n",
			},
			{ "<leader>t", group = "Toggle/Terraform" },
			{
				"<leader>tt",
				":Telescope terraform_doc<cr>",
				desc = "Open Terraform Doc",
				mode = "n",
			},
			{
				"<leader>ta",
				":Telescope terraform_doc full_name=hashicorp/azurerm<cr>",
				desc = "Open Terraform Doc Azurerm",
				mode = "n",
			},
			{
				"<leader>tm",
				":RenderMarkdown toggle<cr>",
				desc = "Toggle Markdown rendering",
				mode = "n",
			},
			{ "<leader>j", group = "Jump" },
			{
				"<leader>jt",
				function()
					require("flash").treesitter_search()
				end,
				desc = "Flash jump treesitter search",
			},
			{
				"<leader>jT",
				function()
					require("flash").treesitter()
				end,
				desc = "Flash jump treesitter",
			},
			{
				"<leader>jj",
				function()
					require("flash").jump()
				end,
				desc = "Flash jump",
			},
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
