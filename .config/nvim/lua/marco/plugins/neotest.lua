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
	config = function()
		require('neotest').setup {
			adapters = {
				require 'neotest-vitest',
				require 'neotest-jest',
			},
		}
	end,
	keys = {
		{
			'<leader>tr',
			'<cmd>Neotest run<CR>',
			desc = 'Run test',
		},
		{
			'<leader>ti',
			'<cmd>Neotest output<CR>',
			desc = 'See outputs',
		},
		{
			'<leader>ts',
			'<cmd>Neotest summary<CR>',
			desc = 'See tests',
		},
	},
}
