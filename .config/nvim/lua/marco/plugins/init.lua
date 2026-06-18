return {
	{ 'christoomey/vim-tmux-navigator' },
	{ 'nvim-lua/plenary.nvim' },
	{ 'JoosepAlviste/nvim-ts-context-commentstring' },
	{
		'szw/vim-maximizer',
		keys = {
			{ '<leader>sm', '<cmd>MaximizerToggle<CR>', desc = 'Maximize/minimize split' },
		},
	},
	{
		'folke/which-key.nvim',
		event = 'VeryLazy',
		opts = { preset = 'helix' },
		keys = {
			{
				'<leader>?',
				function()
					require('which-key').show { global = false }
				end,
				desc = 'Buffer local keymaps',
			},
		},
	},
	{
		'rest-nvim/rest.nvim',
		dependencies = 'romus204/tree-sitter-manager.nvim',
		config = function()
			vim.g.rest_nvim = {}
		end,
	},
}
