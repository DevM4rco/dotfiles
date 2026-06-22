return {
	'romus204/tree-sitter-manager.nvim',
	config = function()
		require('tree-sitter-manager').setup {
			ensure_installed = {},
			border = 'rounded',
			highlight = true,
			nerdfont = true,
		}
	end,
}
