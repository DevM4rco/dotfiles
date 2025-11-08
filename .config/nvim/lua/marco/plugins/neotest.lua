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
			'n',
			'<cmd>Neotest run<CR>',
			'Run test',
		},
		{
			'<cmd>Neotest summary<CR>',
			'See tests',
		},
	},
}
