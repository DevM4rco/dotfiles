return {
	'folke/noice.nvim',
	event = 'VeryLazy',
	dependencies = {
		'MunifTanjim/nui.nvim',
		'rcarriga/nvim-notify',
	},
	config = function()
		require('noice').setup {
			presets = {
				bottom_search = false,
				command_palette = true,
				long_message_to_split = true,
				inc_rename = false,
				lsp_doc_border = false,
			},
		}

		require('notify').setup {
			merge_duplicates = false,
			timeout = 950,
		}
	end,
}
