return {
	'nvim-treesitter/nvim-treesitter',
	branch = 'master',
	lazy = false,
	build = ':TSUpdate',
	dependencies = 'windwp/nvim-ts-autotag',
	config = function()
		require('nvim-treesitter.install').compilers = { 'gcc', 'clang' }

		require('nvim-treesitter.configs').setup {
			ignore_install = {},
			sync_install = false,
			modules = {},
			auto_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {
				'html',
				'css',
				'javascript',
				'typescript',
				'tsx',
				'astro',
				'php',
				'json',
				'json5',
				'http',
				'prisma',
				'markdown',
				'git_config',
				'gitignore',
				'python',
				'c',
				'cpp',
				'go',
				'gomod',
				'gosum',
				'bash',
				'lua',
				'toml',
				'vim',
				'vimdoc',
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = '<C-Space>',
					node_incremental = '<C-Space>',
					scope_incremental = false,
					node_decremental = '<bs>',
				},
			},
		}

		require('nvim-ts-autotag').setup {
			opts = {
				enable_close_on_slash = true,
			},
			per_filetype = {
				['php'] = {
					enable_close = true,
					enable_rename = true,
					enable_close_on_slash = true,
				},
			},
		}
	end,
}
