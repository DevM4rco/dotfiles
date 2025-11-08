return {
	'nvim-mini/mini.nvim',
	version = false,
	config = function()
		require('mini.icons').setup {
			file = {
				['.prettierrc'] = { glyph = '', hl = 'MiniIconsYellow' },
				['package.json'] = { glyph = '󰎙', hl = 'MiniIconsGreen' },
				['eslint.config.js'] = { glyph = '', hl = 'MiniIconsPurple' },
				['eslint.config.mjs'] = { glyph = '', hl = 'MiniIconsPurple' },
				['.gitignore'] = { glyph = '󰊢', hl = 'MiniIconsRed' },
				['tsconfig.json'] = { glyph = '', hl = 'MiniIconsBlue' },
				['vite.config.ts'] = { glyph = '⚡', hl = 'MiniIconsYellow' },
			},
			directory = {
				routes = { glyph = '󰉒', hl = 'MiniIconsGreen' },
				src = { hl = 'MiniIconsPurple' },
				components = { glyph = '󱋣', hl = 'MiniIconsOrange' },
				assets = { glyph = '󰉏', hl = 'MiniIconsYellow' },
			},
		}

		require('mini.splitjoin').setup {}

		require('mini.surround').setup {}

		require('mini.pairs').setup {
			modes = { insert = false, terminal = true, command = true },
		}
	end,
}
