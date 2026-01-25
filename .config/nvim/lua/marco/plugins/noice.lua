return {
	'folke/noice.nvim',
	dependencies = {
		'MunifTanjim/nui.nvim',
		'rcarriga/nvim-notify',
	},
	event = 'VeryLazy',
	config = function()
		require('noice').setup {
			presets = {
				bottom_search = false,
				command_palette = true,
			},
		}

		require('notify').setup {
			merge_duplicates = false,
			timeout = 2500,
			render = 'minimal',
			stages = 'fade',
		}
	end,
}
