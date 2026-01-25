return {
	'nvim-lualine/lualine.nvim',
	config = function()
		local lazy_status = require 'lazy.status'

		local mode = {
			'mode',
			fmt = function(str)
				return ' ' .. str
			end,
		}

		local filetype = {
			'filetype',
			icon_only = true,
			separator = '',
			padding = { left = 1, right = 0 },
		}

		local filename = {
			'filename',
			separator = '',
			padding = { left = 0, right = 0 },
		}

		local lazy_updates = {
			lazy_status.updates,
			cond = lazy_status.has_updates,
			separator = '',
			padding = { right = 1, left = 0 },
		}

		local diff = {
			'diff',
			colored = true,
			symbols = { added = ' ', modified = ' ', removed = ' ' },
		}

		local date = {
			'datetime',
			fmt = function()
				return '󰃭 ' .. os.date '%d/%m/%y'
			end,
		}

		local diagnostics = {
			'diagnostics',
			sources = { 'nvim_diagnostic' },
			sections = { 'error', 'warn' },
			symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
			colored = true,
			update_in_insert = false,
		}

		require('lualine').setup {
			options = {
				theme = 'catppuccin',
				disabled_filetypes = { 'snacks_dashboard', 'snacks_explorer' },
			},
			sections = {
				lualine_a = { mode },
				lualine_b = { filetype, filename },
				lualine_c = { diagnostics },
				lualine_x = { lazy_updates, diff, 'branch' },
				lualine_y = {
					{ 'progress', separator = ' ', padding = { left = 1, right = 0 } },
					{ 'location', padding = { left = 1, right = 0 } },
				},
				lualine_z = { date },
			},
		}
	end,
}
