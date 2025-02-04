vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 0

-- Visible Whitespace
vim.opt.list = true
vim.opt.listchars:append({ tab = "──", space = "⋅", trail = "⋅" })
vim.opt.fillchars:append({ diff = "╱" })

-- Do not break long lines
vim.opt.wrap = false

-- Sync with system clipboard
vim.opt.clipboard = "unnamedplus"

vim.opt.showmode = false -- Dont show mode since we have a statusline
vim.opt.laststatus = 2
vim.opt.cmdheight = 0

-- TODO: Remove in favor of nvim-ufo?
-- Folding
vim.opt.foldenable = true
vim.opt.foldlevel = 100
vim.opt.foldlevelstart = 100

vim.filetype.add({
	pattern = {
		[".*/dockerfile"] = "dockerfile",
		[".*/dockerfile%.%a+"] = "dockerfile",
		[".*/containerfile"] = "dockerfile",
		[".*/containerfile%.%a+"] = "dockerfile",
	},
})

vim.keymap.set("n", "<leader>w", vim.cmd.write, { desc = "Write" })

-- Set working directory when launching NeoVim
-- local group_cdpwd = vim.api.nvim_create_augroup("cdpwd", { clear = true })
-- vim.api.nvim_create_autocmd("VimEnter", {
-- 	pattern = "*",
-- 	group = group_cdpwd,
-- 	callback = function()
-- 		-- https://neovim.io/doc/user/builtin.html#expand()
-- 		local current_dir = vim.fn.expand("%:p:h")
-- 		vim.api.nvim_set_current_dir(current_dir)
-- 	end,
-- })
