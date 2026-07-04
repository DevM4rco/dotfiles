return {
	{
		'MeanderingProgrammer/render-markdown.nvim',
		dependencies = { 'romus204/tree-sitter-manager.nvim' },
		opts = { latex = { enabled = false } },
	},
	{
		'iamcco/markdown-preview.nvim',
		cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
		ft = { 'markdown' },
		build = ':call mkdp#util#install()',
		keys = {
			{
				'<leader>mp',
				function()
					vim.cmd [[MarkdownPreview]]
				end,
				desc = 'Markdown preview',
			},
			{
				'<leader>mt',
				function()
					vim.cmd [[MarkdownPreviewToggle]]
				end,
				desc = 'Markdown preview toggle',
			},
			{
				'<leader>ms',
				function()
					vim.cmd [[MarkdownPreviewStop]]
				end,
				desc = 'Markdown preview stop',
			},
		},
	},
}
