return {
	'folke/snacks.nvim',
	priority = 1000,
	lazy = false,
	opts = {
		bigfile = { notify = true },
		dashboard = {
			preset = {
				keys = {
					{ icon = ' ', key = 'e', desc = 'Toggle file explorer', action = '<leader>e' },
					{ icon = ' ', key = 'f', desc = 'Find files', action = '<leader>ff' },
					{ icon = '󰱼 ', key = 's', desc = 'Find string', action = '<leader>fs' },
					{ icon = '󰒲 ', key = 'l', desc = 'Lazy', action = '<cmd>Lazy<CR>' },
					{ icon = '󰈆 ', key = 'q', desc = 'Exit NVIM', action = '<cmd>qa<CR>' },
				},
				header = [[
██████╗ ███████╗██╗   ██╗███╗   ███╗   ███╗ ██████╗  ██████╗ ██████╗
██╔══██╗██╔════╝██║   ██║████╗ ████║  ████║ ██╔══██╗██╔════╝██╔═══██╗
██║  ██║█████╗  ██║   ██║██╔████╔██║ ██╔██║ ██████╔╝██║     ██║   ██║
██║  ██║██╔══╝  ╚██╗ ██╔╝██║╚██╔╝██║███████╗██╔══██╗██║     ██║   ██║
██████╔╝███████╗ ╚████╔╝ ██║ ╚═╝ ██║╚═══██╔╝██║  ██║╚██████╗╚██████╔╝
╚═════╝ ╚══════╝  ╚═══╝  ╚═╝     ╚═╝    ╚═╝ ╚═╝  ╚═╝ ╚═════╝ ╚═════╝]],
			},
			sections = {
				{ section = 'header' },
				{ section = 'keys', gap = 1, padding = 1 },
				{
					pane = 2,
					section = 'terminal',
					cmd = 'colorscript -e square',
				},
				{ pane = 2, icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1 },
			},
		},
		explorer = { enabled = true },
		picker = {
			layout = {
				layout = { width = 32 },
			},
			exclude = { 'node_modules', '.git', '.venv' },
			sources = {
				files = { hidden = true, ignored = true },
			},
		},
		indent = {
			animate = {
				style = 'down',
				duration = { step = 15, total = 250 },
			},
		},
		input = { enabled = true },
		lazygit = { enabled = true },
		quickfile = { enabled = true },
		win = { enabled = true },
		zen = { enabled = true },
	},
	keys = {
		-- explorer
		{
			'<leader>e',
			function()
				Snacks.picker.explorer { hidden = true }
			end,
			desc = 'Toggle files explorer',
		},
		-- find
		{
			'<leader>ff',
			function()
				Snacks.picker.files { ignored = true }
			end,
			desc = 'Find files',
		},
		{
			'<leader>fs',
			function()
				Snacks.picker.grep()
			end,
			desc = 'Find string',
		},
		-- lazygit
		{
			'<leader>lg',
			function()
				Snacks.lazygit()
			end,
			desc = 'Lazygit',
		},
		-- rename file
		{
			'<leader>rf',
			function()
				Snacks.rename.rename_file()
			end,
			desc = 'Rename File',
		},
		-- zen
		{
			'<leader>z',
			function()
				Snacks.zen()
			end,
			desc = 'Toggle zen mode',
		},
	},
}
