return {
	"kdheepak/lazygit.nvim",
	cmd = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>gg", "<cmd>LazyGitCurrentFile<cr>", desc = "LazyGit Current File" },
		{ "<leader>gG", "<cmd>LazyGit<cr>", desc = "LazyGit cwd" },
	},
}
