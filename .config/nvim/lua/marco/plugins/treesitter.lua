return {
	'romus204/tree-sitter-manager.nvim',
	config = function()
		require('tree-sitter-manager').setup {
			ensure_installed = {
				'html',
				'css',
				'javascript',
				'typescript',
				'tsx',
				'yaml',
				'prisma',
				'python',
				'lua',
				'vimdoc',
				'bash',
				'markdown',
				'markdown_inline',
				'http',
			},
			auto_install = true,
			border = 'rounded',
			highlight = true,
			nerdfont = true,
		}
	end,
}
