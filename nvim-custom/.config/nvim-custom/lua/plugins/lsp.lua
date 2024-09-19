return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local bicep_lsp_bin =
				"/Users/mvantol/.local/share/nvim-custom/mason/packages/bicep-lsp/extension/bicepLanguageServer/Bicep.LangServer.dll"
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.terraformls.setup({})
			lspconfig.tflint.setup({})
			lspconfig.gopls.setup({})
			lspconfig.yamlls.setup({})
			lspconfig.bicep.setup({
				cmd = { "dotnet", bicep_lsp_bin },
			})
			lspconfig.marksman.setup({})
			lspconfig.jsonls.setup({})
		end,
	},
}
