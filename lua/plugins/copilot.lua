return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	opts = {
		panel = {
			enabled = false,
		},
		suggestion = {
			enabled = true,
			auto_trigger = true,
			keymap = {
				accept = "<C-'>",
				accept_word = false,
				accept_line = false,
				dismiss = "<C-]>",
			},
		},
	},
}
