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
		{ '<leader>bf', '<cmd>tabnew %<CR>', desc = 'Open current buffer in new tab' },
		{ '<leader>bx', '<cmd>tabclose<CR>', desc = 'Close current tab' },
		{ '<Tab>', '<cmd>BufferLineCycleNext<CR>', desc = 'Go to next tab' },
		{ '<S-Tab>', '<cmd>BufferLineCyclePrev<CR>', desc = 'Go to previous tab' },
	},
}
