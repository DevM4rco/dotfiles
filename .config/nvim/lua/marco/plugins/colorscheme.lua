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
				blink_cmp = { style = 'bordered' },
				gitsigns = true,
				mason = true,
				mini = {
					enabled = true,
					indent_scope_color = 'blue',
				},
				neotest = true,
				noice = true,
				notifier = true,
				notify = true,
				render_markdown = true,
				snacks = {
					enabled = true,
					indent_scope_color = 'blue',
				},
				lsp_trouble = true,
				which_key = true,
			},
		}

		vim.cmd [[colorscheme catppuccin]]
	end,
}
