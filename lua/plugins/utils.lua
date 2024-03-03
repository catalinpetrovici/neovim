return {
	--[[{
		{ -- Add indentation guides even on blank lines
			"lukas-reineke/indent-blankline.nvim",
			-- Enable `lukas-reineke/indent-blankline.nvim`
			-- See `:help ibl`
			main = "ibl",
			opts = {},
		},
	},--]]
	-- "gc" to comment visual regions/lines
	{ "numToStr/Comment.nvim", opts = {} },

	-- Here is a more advanced example where we pass configuration
	-- options to `gitsigns.nvim`. This is equivalent to the following lua:
	--    require('gitsigns').setup({ ... })
	--
	-- See `:help gitsigns` to understand what the configuration keys do
	{ -- Adds git related signs to the gutter, as well as utilities for managing changes
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
	},

	{ -- Useful plugin to show you pending keybinds.
		"folke/which-key.nvim",
		event = "VimEnter", -- Sets the loading event to 'VimEnter'
		config = function() -- This is the function that runs, AFTER loading
			require("which-key").setup()

			-- Document existing key chains
			require("which-key").register({
				-- ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
				["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
				-- ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
				-- ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
				-- ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
			})
		end,
	},
}
