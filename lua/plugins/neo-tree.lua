return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	opts = {
		popup_border_style = "rounded",
		source_selector = {
			winbar = false,
			statusline = false,
		},
		filesystem = {
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
			},
		},
	},
}
