vim.cmd [[let g:netrw_banner = 0]]
vim.cmd [[let g:netrw_liststyle = 3]]

vim.g.have_nerd_font = true

local opt = vim.o

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smarttab = true

opt.wrap = false
opt.breakindent = true

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'

opt.backspace = 'indent,eol,start'

opt.showmode = false

opt.undofile = true

opt.inccommand = 'split'

opt.scrolloff = 10
opt.sidescrolloff = 10

opt.mouse = 'a'
