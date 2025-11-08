local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.uv.fs_stat(lazypath) then
	vim.fn.system {
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable',
		lazypath,
	}
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
	spec = {
		{ import = 'marco.plugins' },
		{ import = 'marco.plugins.lsp' },
		{ 'christoomey/vim-tmux-navigator' },
		{ 'szw/vim-maximizer' },
		{ 'JoosepAlviste/nvim-ts-context-commentstring' },
		{
			'bennypowers/template-literal-comments.nvim',
			opts = true,
			ft = { '*' },
		},
	},
	checker = { enabled = true, notify = false },
	change_detection = { notify = false },
}
