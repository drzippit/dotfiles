return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.terraformls.setup({})
			lspconfig.gopls.setup({})
			lspconfig.yamlls.setup({})
			lspconfig.biceplsp.setup({})
		end,
	},
}
