return {
	"nvim-lua/plenary.nvim",
	"eandrju/cellular-automaton.nvim",

	-- copilot
	"github/copilot.vim",
	{
		"mistricky/codesnap.nvim",
		build = "make",
		opts = {
			save_path = "~/Pictures/CodeSnap/",
			watermark = "",
			bg_x_padding = 80,
			bg_y_padding = 60,
			bg_theme = "grape",
		},
	},
	{
		"OXY2DEV/markview.nvim",
		lazy = false,
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
}
