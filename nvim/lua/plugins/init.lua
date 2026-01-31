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
			treesitter.update():wait(600000)
			treesitter.install({ "c", "cpp", "go", "ini", "make", "markdown", "python", "rust", "toml", "zig" }):wait(600000)
		end,
		branch = "main",
		config = function()
			vim.api.nvim_create_autocmd('FileType', {
				pattern = { "c", "cpp", "dosini", "go", "make", "markdown", "python", "rust", "toml", "zig" },
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
	{
		"mikavilpas/yazi.nvim",
		version = "*", -- use the latest stable version
		event = "VeryLazy",
		dependencies = {
			{ "nvim-lua/plenary.nvim", lazy = true },
		},
		keys = {
			-- 👇 in this section, choose your own keymappings!
			{
				"<leader>e",
				"<cmd>Yazi toggle<cr>",
				desc = "Resume the last yazi session",
			},
		},
		opts = {
			-- if you want to open yazi instead of netrw, see below for more info
			open_for_directories = false,
			keymaps = {
				show_help = "<f1>",
			},
		},
		init = function()
			-- mark netrw as loaded so it's not loaded at all.
			--
			-- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
			vim.g.loaded_netrwPlugin = 1
		end,
	},
}
