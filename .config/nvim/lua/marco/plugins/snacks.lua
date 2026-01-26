return {
	'folke/snacks.nvim',
	priority = 1000,
	lazy = false,
	opts = {
		dashboard = {
			preset = {
				keys = {
					{ icon = ' ', key = 'e', desc = 'File explorer', action = '<leader>e' },
					{ icon = ' ', key = 'f', desc = 'Find File', action = '<leader>ff' },
					{ icon = '󰱼 ', key = 's', desc = 'Find String', action = '<leader>fs' },
					{ icon = ' ', key = 'g', desc = 'LazyGit', action = '<leader>lg' },
					{ icon = ' ', key = 'm', desc = 'Mason', action = '<cmd>Mason<CR>' },
					{ icon = '󰒲 ', key = 'l', desc = 'Lazy', action = '<cmd>Lazy<CR>' },
					{ icon = ' ', key = 'q', desc = 'Quit', action = '<cmd>qa<CR>' },
				},
				--╔═╗
				--║█║
				--╚═╝
				header = [[
██████╗ ███████╗██╗   ██╗███╗   ███╗   ████╗  ██████╗  ██████╗ ██████╗ 
██╔══██╗██╔════╝██║   ██║████╗ ████║  ██╔██║  ██╔══██╗██╔════╝██╔═══██╗
██║  ██║█████╗  ██║   ██║██╔████╔██║ ██╔╝██║  ██████╔╝██║     ██║   ██║
██║  ██║██╔══╝  ╚██╗ ██╔╝██║╚██╔╝██║████████╗ ██╔══██╗██║     ██║   ██║
██████╔╝███████╗ ╚████╔╝ ██║ ╚═╝ ██║╚════██╔╝ ██║  ██║╚██████╗╚██████╔╝
╚═════╝ ╚══════╝  ╚═══╝  ╚═╝     ╚═╝     ╚═╝  ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ 
        ]],
			},
			sections = {
				{ section = 'header' },
				{ pane = 2, section = 'terminal', cmd = 'colorscript -e square' },
				{ section = 'keys', gap = 1, padding = 1 },
				{ pane = 2, icon = ' ', title = 'Recent Files', section = 'recent_files' },
			},
		},
		indent = {
			enabled = true,
			animate = {
				style = 'down',
				duration = { step = 15, total = 250 },
			},
		},
		input = { enabled = true },
		lazygit = { enabled = true },
		picker = {
			layout = {
				layout = { width = 30 },
			},
			exclude = { 'node_modules', '.git', '.venv', '.next', '.angular' },
			sources = {
				explorer = {
					hidden = true,
				},
				files = { hidden = true, ignored = true },
			},
		},
		win = { enabled = true },
	},
	keys = {
		{
			'<leader>ff',
			function()
				Snacks.picker.files()
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
		{
			'<leader>e',
			function()
				Snacks.picker.explorer()
			end,
			desc = 'File explorer',
		},
		{
			'<leader>lg',
			function()
				Snacks.lazygit()
			end,
			desc = 'LazyGit',
		},
		{
			'<leader>rf',
			function()
				Snacks.rename.rename_file()
			end,
			desc = 'Rename file',
		},
	},
}
