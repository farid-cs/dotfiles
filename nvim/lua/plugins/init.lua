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
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			local treesitter = require("nvim-treesitter")

			treesitter.setup()
			treesitter.update()
			treesitter.install({ "c", "cpp", "go", "ini", "make", "python", "rust", "toml", "zig" }):wait(600000)
		end,
		branch = "main",
		config = function()
			vim.api.nvim_create_autocmd('FileType', {
				pattern = { "c", "cpp", "dosini", "go", "make", "python", "rust", "toml", "zig" },
				callback = function()
					vim.treesitter.start()
				end,
			})
		end,
	},
	{
		"ibhagwan/fzf-lua",
		opts = {},
	},
}
