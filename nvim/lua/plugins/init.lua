return {
	{ "windwp/nvim-autopairs", opts = {} },
	{
		"ellisonleao/gruvbox.nvim",
		opts = {
			italic = { strings = false },
		},
	},
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
		},
		cmd = "Neogit",
		opts = {},
	},
}
