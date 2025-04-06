-- setup must be caled before loading

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", "<CMD>update<CR>")
vim.keymap.set("n", "<leader>q", "<CMD>q<CR>")
vim.keymap.set("n", "<leader>o", "<CMD>vsplit<CR>")
vim.keymap.set("n", "<leader>p", "<CMD>split<CR>")
vim.keymap.set("n", "<leader>l", "<CMD>:Lazy<CR>")

local normal_hl = vim.api.nvim_get_hl(0, { name = "Normal" })
local normalFloat_hl = vim.api.nvim_get_hl(0, { name = "NormalFloat" })

local is_transparent = true

local function toggle_transparency()
	if is_transparent then
		vim.api.nvim_set_hl(0, "Normal", { bg = normal_hl.bg, fg = normal_hl.fg })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = normalFloat_hl.bg, fg = normalFloat_hl.fg })
		is_transparent = false
	else
		vim.api.nvim_set_hl(0, "Normal", { bg = "none", fg = normal_hl.fg })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", fg = normalFloat_hl.fg })
		is_transparent = true
	end
end

vim.keymap.set("n", "<leader>tt", toggle_transparency, { desc = "Toggle bg transparency" })
local global = vim.g
local o = vim.opt

o.number = true
o.relativenumber = true
o.clipboard = "unnamedplus"
o.syntax = "on"
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.encoding = "UTF-8"
o.ruler = true
o.mouse = "a"
o.title = true
o.hidden = true
o.ttimeoutlen = 0
o.wildmenu = true
o.showcmd = true
o.showmatch = true
o.inccommand = "split"
o.splitright = true
o.splitbelow = true
o.termguicolors = true
