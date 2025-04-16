return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "VeryLazy",
	keys = {
		{
			"<leader>1",
			function()
				require("bufferline").go_to(1)
			end,
			desc = "Go to buffer 1",
		},
		{
			"<leader>2",
			function()
				require("bufferline").go_to(2)
			end,
			desc = "Go to buffer 2",
		},
		{
			"<leader>3",
			function()
				require("bufferline").go_to(3)
			end,
			desc = "Go to buffer 3",
		},
		{
			"<leader>4",
			function()
				require("bufferline").go_to(4)
			end,
			desc = "Go to buffer 4",
		},
		{
			"<leader>0",
			"<cmd>bdelete<CR>",
			desc = "Cerrar el buffer actual",
		},
	},
	config = function()
		local buffer_line = require("bufferline")

		buffer_line.setup({
			options = {
				hover = {
					enabled = true,
					delay = 200,
					reveal = { "close" },
				},
				mode = "buffers",
				close_command = "bdelete! %d",
				right_mouse_command = "bdelete! %d",
				left_mouse_command = "buffer %d",
				buffer_close_icon = "",
				separator_style = "thin",
			},
		})
	end,
}
