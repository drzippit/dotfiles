return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.terraformls.setup({})
			lspconfig.tflint.setup({})
			lspconfig.gopls.setup({})
			lspconfig.yamlls.setup({})
			lspconfig.bicep.setup({})
			lspconfig.marksman.setup({})
		end,
	},
}
