return {
	"stevearc/conform.nvim",
	opts = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				terraform = { "terraform_fmt" },
				go = { "gofmt", "goimports" },
			},
		})
	end,
	config = function()
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
		},
	},
}
