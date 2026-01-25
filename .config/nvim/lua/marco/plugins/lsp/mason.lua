return {
	'mason-org/mason.nvim',
	dependencies = {
		'mason-org/mason-lspconfig.nvim',
		'WhoIsSethDaniel/mason-tool-installer.nvim',
	},
	config = function()
		require('mason').setup {
			ui = {
				icons = {
					package_installed = '✓',
					package_pending = '➜',
					package_uninstalled = '✗',
				},
			},
		}

		require('mason-lspconfig').setup {
			automatic_enable = true,
			ensure_installed = {
				'html',
				'cssls',
				'css_variables',
				'cssmodules_ls',
				'tailwindcss',
				'ts_ls',
				'angularls',
				'emmet_ls',
				'docker_language_server',
				'jsonls',
				'prismals',
				'pyright',
				'bashls',
				'clangd',
				'lua_ls',
			},
		}

		require('mason-tool-installer').setup {
			ensure_installed = {
				'prettier',
				'eslint_d',
				'black',
				'pylint',
				'clang-format',
				'stylua',
				'shfmt',
			},
		}
	end,
}
