return {
	'neovim/nvim-lspconfig',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'b0o/schemastore.nvim',
		{
			'folke/lazydev.nvim',
			ft = 'lua',
			opts = {
				library = { { path = '${3rd}/luv/library', words = { 'vim%.uv' } } },
			},
		},
	},
	config = function()
		local capabilities = require('cmp_nvim_lsp').default_capabilities()

		vim.api.nvim_create_autocmd('LspAttach', {
			group = vim.api.nvim_create_augroup('UserLspConfig', {}),
			callback = function()
				local map = function(mode, l, r, desc)
					vim.keymap.set(mode, l, r, { desc = desc, silent = true })
				end

				map('n', '<leader>gd', Snacks.picker.lsp_definitions, 'Show LSP definitions')
				map('n', '<leader>gD', Snacks.picker.lsp_declarations, 'Show LSP declarations')
				map('n', '<leader>gR', Snacks.picker.lsp_references, 'Show LSP references')
				map('n', '<leader>gi', Snacks.picker.lsp_implementations, 'Show LSP implementations')
				map('n', '<leader>gt', Snacks.picker.lsp_type_definitions, 'Show LSP type definitions')
				map('n', '<leader>ca', vim.lsp.buf.code_action, 'See available code actions')
				map('n', '<leader>rn', vim.lsp.buf.rename, 'Smart rename')
				map('n', 'K', vim.lsp.buf.hover)
			end,
		})

		vim.diagnostic.config {
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = ' ',
					[vim.diagnostic.severity.WARN] = ' ',
					[vim.diagnostic.severity.HINT] = '󰠠 ',
					[vim.diagnostic.severity.INFO] = ' ',
				},
			},
			virtual_text = false,
			underline = true,
			update_in_insert = false,
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
