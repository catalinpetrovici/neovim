return {
	{
		"catppuccin/nvim",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-macchiato")
		end,
	},
	--	{
	--		"rebelot/kanagawa.nvim",
	--		priority = 1000,
	--		config = function()
	--			vim.cmd.colorscheme("kanagawa")
	--		end,
	--	},
}
