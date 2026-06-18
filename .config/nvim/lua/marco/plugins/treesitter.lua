return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	branch = 'master',
	config = function()
		require('nvim-treesitter.install').compilers = { 'gcc', 'cc', 'clang' }

		require('nvim-treesitter.configs').setup {
			install_dir = vim.fn.stdpath 'data' .. '/site',
			auto_install = false,
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
	end,
}
