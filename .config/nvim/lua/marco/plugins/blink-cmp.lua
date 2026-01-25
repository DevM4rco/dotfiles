return {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets' },
	version = '1.*',
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			['<C-k>'] = { 'select_prev', 'fallback' },
			['<C-j>'] = { 'select_next', 'fallback' },
			['<C-f>'] = { 'scroll_documentation_up', 'fallback' },
			['<C-b>'] = { 'scroll_documentation_down', 'fallback' },
			['<C-Space>'] = { 'show', 'show_documentation', 'hide_documentation' },
			['<C-e>'] = { 'hide', 'fallback' },
			['<CR>'] = { 'select_and_accept', 'fallback' },
		},

		appearance = {
			nerd_font_variant = 'mono',
		},

		cmdline = {
			keymap = {
				['<C-k>'] = { 'select_prev', 'fallback' },
				['<C-j>'] = { 'select_next', 'fallback' },
			},
		},

		completion = {
			documentation = { auto_show = false },
			menu = {
				border = 'rounded',
				winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpDocCursorLine,Search:None',
				draw = {
					columns = {
						{ 'label', 'label_description', gap = 1 },
						{ 'kind', 'kind_icon', gap = 1 },
					},
					components = {
						kind_icon = {
							text = function(ctx)
								local kind_icons = {
									Text = '󰉿',
									Method = 'm',
									Function = '󰊕',
									Constructor = '',
									Field = '',
									Variable = '󰆧',
									Class = '󰌗',
									Interface = '',
									Module = '',
									Property = '',
									Unit = '',
									Value = '󰎠',
									Enum = '',
									Keyword = '󰌋',
									Snippet = '',
									Color = '󰏘',
									File = '󰈙',
									Reference = '',
									Folder = '󰉋',
									EnumMember = '',
									Constant = '󰇽',
									Struct = '',
									Event = '',
									Operator = '󰆕',
									TypeParameter = '󰊄',
								}

								local icon = kind_icons[ctx.kind]
								if icon == nil then
									icon = ctx.kind_icon
								end

								return icon
							end,
						},
					},
				},
			},
		},

		sources = {
			default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
			providers = {
				snippets = { opts = { friendly_snippets = true } },
				lazydev = {
					name = 'LazyDev',
					module = 'lazydev.integrations.blink',
					score_offset = 100,
				},
			},
		},

		fuzzy = { implementation = 'prefer_rust_with_warning' },
	},
	opts_extend = { 'sources.default' },
}
