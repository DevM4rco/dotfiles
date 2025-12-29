return {
	'stevearc/conform.nvim',
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		require('conform').setup {
			formatters_by_ft = {
				html = { 'prettier' },
				css = { 'prettier' },
				javascript = { 'prettier' },
				typescript = { 'prettier' },
				javascriptreact = { 'prettier' },
				typescriptreact = { 'prettier' },
				vue = { 'prettier' },
				json = { 'prettier' },
				jsonc = { 'prettier' },
				markdown = { 'prettier' },
				yaml = { 'prettier' },
				c = { 'clang-format' },
				php = { 'php_cs_fixer' },
				go = { 'goimports' },
				lua = { 'stylua' },
				python = { 'black' },
				sh = { 'shfmt' },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 3000,
			},
		}
	end,
}
