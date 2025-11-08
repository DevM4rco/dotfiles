return {
	'hrsh7th/nvim-cmp',
	event = 'InsertEnter',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		{
			'L3MON4D3/LuaSnip',
			version = 'v2.*',
			build = 'make install_jsregexp',
		},
		'saadparwaiz1/cmp_luasnip',
		'rafamadriz/friendly-snippets',
	},
	config = function()
		local cmp = require 'cmp'
		local kind_icons = {
			Text = '',
			Method = '󰆧',
			Function = '󰊕',
			Constructor = '',
			Field = '󰇽',
			Variable = '󰂡',
			Class = '󰠱',
			Interface = '',
			Module = '',
			Property = '󰜢',
			Unit = '',
			Value = '󰎠',
			Enum = '',
			Keyword = '󰌋',
			Snippet = '',
			Color = '󰏘',
			File = '󰈙',
			Reference = '',
			Folder = '󰉋',
			EnumMember = '',
			Constant = '󰏿',
			Struct = '',
			Event = '',
			Operator = '󰆕',
			TypeParameter = '󰅲',
		}

		require('luasnip.loaders.from_vscode').lazy_load()

		cmp.setup {
			completion = { completeopt = 'menu,menuone,noinsert' },
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert {
				['<C-k>'] = cmp.mapping.select_prev_item(),
				['<C-j>'] = cmp.mapping.select_next_item(),
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-Space>'] = cmp.mapping(function()
					if cmp.visible() then
						if cmp.visible_docs() then
							cmp.close_docs()
						else
							cmp.open_docs()
						end
					else
						cmp.complete()
					end
				end),
				['<C-e>'] = cmp.mapping.abort(),
				['<CR>'] = cmp.mapping.confirm {
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				},
			},
			sources = cmp.config.sources {
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
				{ name = 'buffer', keyword_length = 3 },
				{ name = 'path' },
				{ name = 'lazydev', group_index = 0 },
			},
			formatting = {
				fields = { 'kind', 'abbr', 'menu' },
				format = function(entry, vim_item)
					vim_item.kind = string.format('%s', kind_icons[vim_item.kind])
					vim_item.menu = ({
						nvim_lsp = '[LSP]',
						luasnip = '[Snippet]',
						buffer = '[Buffer]',
						path = '[Path]',
					})[entry.source.name]

					return vim_item
				end,
			},
		}
	end,
}
