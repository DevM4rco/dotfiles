return {
	'nvim-lualine/lualine.nvim',
	dependencies = 'echasnovski/mini.icons',
	config = function()
		local lazy_status = require 'lazy.status'

		local mode = {
			'mode',
			fmt = function(str)
				return ' ' .. str
			end,
		}

		local filetype = {
			'filetype',
			icon_only = true,
			separator = ' ',
			padding = { right = 0, left = 1 },
		}

		local filename = {
			'filename',
			file_status = true,
			path = 0,
			padding = { left = 0, right = 1 },
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

		local diagnostics = {
			'diagnostics',
			sources = { 'nvim_diagnostic' },
			sections = { 'error', 'warn' },
			symbols = { error = ' ', warn = ' ', info = ' ', hint = '󰠠 ' },
			colored = true,
			update_in_insert = false,
			always_visible = false,
		}

		local date = function()
			return '󰃭 ' .. os.date '%d/%m/%y'
		end

		require('lualine').setup {
			options = {
				theme = 'catppuccin',
				icons_enabled = true,
				globalstatus = vim.o.laststatus == 3,
				disabled_filetypes = {
					statusline = { 'snacks_dashboard', 'snacks_explorer' },
				},
			},
			sections = {
				lualine_a = { mode },
				lualine_b = { filetype, filename },
				lualine_c = { 'branch' },
				lualine_x = { lazy_updates, diagnostics, diff },
				lualine_y = {
					{ 'progress', separator = ' ', padding = { left = 1, right = 0 } },
					{ 'location', padding = { left = 0, right = 1 } },
				},
				lualine_z = { date },
			},
		}
	end,
}
