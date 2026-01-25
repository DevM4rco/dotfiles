return {
	'neovim/nvim-lspconfig',
	event = { 'BufReadPre', 'BufNewFile' },
	dependencies = {
		{
			'folke/lazydev.nvim',
			ft = 'lua',
			opts = {
				library = {
					{ path = '${3rd}/luv/library', words = { 'vim%.uv' } },
				},
			},
		},
		'saghen/blink.cmp',
		'b0o/schemastore.nvim',
	},
	config = function()
		local severity = vim.diagnostic.severity
		local capabilities = require('blink.cmp').get_lsp_capabilities()

		vim.api.nvim_create_autocmd('LspAttach', {
			group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
			callback = function()
				local map = function(mode, l, r, desc)
					vim.keymap.set(mode, l, r, { desc = desc, silent = true, noremap = true })
				end

				map('n', 'K', vim.lsp.buf.hover)
				map('n', '<leader>rn', vim.lsp.buf.rename, 'Smart rename')
				map('n', '<leader>rs', '<cmd>LspRestart<CR>', 'Restart LSP')
				map('n', '<leader>ca', vim.lsp.buf.code_action, 'Code actions')
				map('n', '<leader>gD', Snacks.picker.lsp_definitions, 'Go to definitions')
				map('n', '<leader>gd', Snacks.picker.lsp_declarations, 'Go to declarations')
				map('n', '<leader>gi', Snacks.picker.lsp_implementations, 'Go to implementations')
				map('n', '<leader>gt', Snacks.picker.lsp_type_definitions, 'Go to type definitions')
			end,
		})

		vim.diagnostic.config {
			signs = {
				text = {
					[severity.ERROR] = ' ',
					[severity.WARN] = ' ',
					[severity.INFO] = ' ',
					[severity.HINT] = ' ',
				},
			},
		}

		vim.lsp.config('*', {
			capabilities = capabilities,
			on_attach = function(client)
				client.server_capabilities.documentFormattingProvider = false
				client.server_capabilities.documentRangeFormattingProvider = false
			end,
		})

		vim.lsp.config('lua_ls', {
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { 'Snacks' },
					},
					completion = {
						callSnippet = 'Replace',
					},
				},
			},
		})

		vim.lsp.config('jsonls', {
			capabilities = capabilities,
			settings = {
				json = {
					schemas = require('schemastore').json.schemas(),
					validate = { enable = true },
				},
			},
		})
	end,
}
