return {
	'barrett-ruth/live-server.nvim',
	build = 'bun i -g live-server',
	cmd = { 'LiveServerStart', 'LiveServerStop' },
	config = function()
		vim.g.live_server = {
			port = 5000,
		}
	end,
}
