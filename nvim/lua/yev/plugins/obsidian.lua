return {
	"epwalsh/obsidian.nvim",
	version = "*", -- latest release
	lazy = true,
	ft = "markdown",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		workspaces = {
			{ name = "personal", path = "~/Desktop/Obsidian/Yev/" },
		},
		attachments = {
			img_folder = "assets",
		},
	},
	config = function()
		vim.opt_local.conceallevel = 2
	end,
}
