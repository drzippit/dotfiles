return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
			ensure_installed = {
				"lua_ls",
				"terraformls",
				"tflint",
				"bicep",
				"gopls",
				"jsonls",
				"yamlls",
				"marksman",
			},
		},
	},
	{
		"zapling/mason-conform.nvim",
		lazy = false,
		opts = function()
			require("mason-conform").setup({
				ignore_install = { "prettier", "black", "isort", "prettierd" }, -- List of formatters to ignore during install
			})
		end,
	},
}
