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
				'astro',
				'vue_ls',
				'emmet_ls',
				'intelephense',
				'jsonls',
				'prismals',
				'pyright',
				'clangd',
				'gopls',
				'bashls',
				'vimls',
				'lua_ls',
			},
		}

		require('mason-tool-installer').setup {
			ensure_installed = {
				'prettier',
				'eslint_d',
				'black',
				'pylint',
				'php-cs-fixer',
				'clang-format',
				'goimports',
				'stylua',
				'shfmt',
			},
		}
	end,
}
