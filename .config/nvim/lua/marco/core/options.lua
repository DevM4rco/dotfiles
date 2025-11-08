vim.cmd [[let g:netrw_liststyle = 3]]
vim.cmd [[let g:netrw_banner = 0]]

local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.mouse = 'a'

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.wrap = false
opt.breakindent = true

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'

opt.backspace = { 'start', 'eol', 'indent' }

opt.showmode = false

opt.swapfile = false
opt.backup = false

opt.incsearch = true
opt.inccommand = 'split'

opt.scrolloff = 10
opt.sidescrolloff = 10

opt.foldenable = true
opt.foldmethod = 'manual'
opt.foldlevel = 99
opt.foldcolumn = '0'

opt.completeopt = 'menu,menuone,noinsert'

opt.splitright = true
opt.splitbelow = true

opt.updatetime = 100

opt.hlsearch = true
