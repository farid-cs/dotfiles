return {
	{ "windwp/nvim-autopairs", opts = {} },
	{
		"ellisonleao/gruvbox.nvim",
		opts = {
			italic = { strings = false },
		},
		config = function(_, opts)
			require("gruvbox").setup(opts)
			vim.cmd("colorscheme gruvbox")
		end,
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
