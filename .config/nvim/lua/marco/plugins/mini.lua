return {
	'nvim-mini/mini.nvim',
	version = '*',
	config = function()
		require('mini.icons').setup {
			file = {
				['.prettierrc'] = { glyph = '', hl = 'MiniIconsYellow' },
				['package.json'] = { glyph = '󰎙', hl = 'MiniIconsGreen' },
				['eslint.config.js'] = { glyph = '', hl = 'MiniIconsPurple' },
				['eslint.config.mjs'] = { glyph = '', hl = 'MiniIconsPurple' },
				['.gitignore'] = { glyph = '󰊢', hl = 'MiniIconsRed' },
				['tsconfig.json'] = { glyph = '', hl = 'MiniIconsBlue' },
				['vite.config.ts'] = { glyph = '', hl = 'MiniIconsYellow' },
			},
			directory = {
				routes = { glyph = '󰉒', hl = 'MiniIconsGreen' },
				src = { hl = 'MiniIconsPurple' },
				components = { glyph = '󱋣', hl = 'MiniIconsOrange' },
				assets = { glyph = '󰉏', hl = 'MiniIconsYellow' },
			},
		}
		MiniIcons.mock_nvim_web_devicons()

		require('mini.pairs').setup {
			modes = { insert = false, command = true, terminal = true },
		}

		require('mini.splitjoin').setup {}

		require('mini.surround').setup {}
	end,
}
