return {
	'windwp/nvim-autopairs',
	event = 'InsertEnter',
	dependencies = 'windwp/nvim-ts-autotag',
	config = function()
		require('nvim-autopairs').setup {
			check_ts = true,
			ts_config = {
				lua = { 'string' },
				javascript = { 'template_string' },
			},
		}

		require('nvim-ts-autotag').setup {
			opts = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = true,
			},
		}
	end,
}
