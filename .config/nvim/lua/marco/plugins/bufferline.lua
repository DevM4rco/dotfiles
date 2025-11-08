return {
	'akinsho/bufferline.nvim',
	version = '*',
	dependencies = 'nvim-tree/nvim-web-devicons',
	opts = function()
		local highlights = require('catppuccin.special.bufferline').get_theme()
		local opts = {
			options = {
				mode = 'tabs',
				highlights = highlights,
				diagnostics = 'nvim_lsp',
				always_show_bufferline = false,
			},
		}
		return opts
	end,
	keys = {
		{ '<leader>be', '<cmd>tabnew<CR>', desc = 'Open new tab' },
		{ '<leader>bx', '<cmd>tabclose<CR>', desc = 'Close current tab' },
		{ '<Tab>', '<cmd>BufferLineCycleNext<CR>' },
		{ '<S-Tab>', '<cmd>BufferLineCyclePrev<CR>' },
	},
}
