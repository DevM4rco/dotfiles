return {
	'stevearc/conform.nvim',
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		require('conform').setup {
			formatters_by_ft = {
				html = { 'prettier' },
				css = { 'prettier' },
				javascript = { 'prettier' },
				javascriptreact = { 'prettier' },
				typescript = { 'prettier' },
				typescriptreact = { 'prettier' },
				json = { 'prettier' },
				yaml = { 'prettier' },
				python = { 'black' },
				lua = { 'stylua' },
				c = { 'clang-format' },
				bash = { 'shfmt' },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 3000,
			},
		}
	end,
}
