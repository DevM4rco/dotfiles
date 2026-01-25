return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	branch = 'master',
	dependencies = 'windwp/nvim-ts-autotag',
	config = function()
		require('nvim-treesitter.install').compilers = { 'gcc', 'cc', 'clang' }

		require('nvim-treesitter.configs').setup {
			install_dir = vim.fn.stdpath 'data' .. '/site',
			auto_install = true,
			sync_install = true,
			ignore_install = {},
			modules = {},
			ensure_installed = {
				'html',
				'css',
				'javascript',
				'typescript',
				'tsx',
				'yaml',
				'prisma',
				'python',
				'json',
				'lua',
				'vimdoc',
				'bash',
			},
			highlight = { enable = true },
			indent = { enable = true },
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
