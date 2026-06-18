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
	},
}
