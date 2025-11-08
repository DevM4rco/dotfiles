return {
	'catppuccin/nvim',
	name = 'catppuccin',
	priority = 1000,
	config = function()
		require('catppuccin').setup {
			flavour = 'mocha',
			transparent_background = true,
			float = {
				transparent = true,
				solid = false,
			},
			integrations = {
				mason = true,
				noice = true,
				notifier = true,
				notify = true,
				snacks = {
					enabled = true,
					indent_scope_color = 'lavender',
				},
				lsp_trouble = true,
				which_key = true,
			},
		}

		vim.cmd [[colorscheme catppuccin]]
	end,
}
