return {
	'nvim-neotest/neotest',
	dependencies = {
		'nvim-neotest/nvim-nio',
		'nvim-lua/plenary.nvim',
		'antoinemadec/FixCursorHold.nvim',
		'nvim-treesitter/nvim-treesitter',
		'marilari88/neotest-vitest',
		'nvim-neotest/neotest-jest',
	},
	opts = {
		adapters = {
			['neotest-vitest'] = {},
			['neotest-jest'] = {},
		},
	},
	keys = {
		{
			'<leader>tr',
			'<cmd>Neotest run<CR>',
			desc = 'Run test',
		},
		{
			'<leader>ts',
			'<cmd>Neotest summary<CR>',
			desc = 'See tests',
		},
	},
}
