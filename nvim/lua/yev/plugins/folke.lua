return {
	{
		"folke/snacks.nvim",
		event = "VeryLazy",
		opts = {
			terminal = {
				win = {
					style = "terminal",
					size = { height = 0.20 },
				},
			},
		},
		keys = {
			{
				"<leader>tt",
				function()
					Snacks.terminal.toggle()
				end,
				desc = "Terminal split",
			},
		},
	},
}
