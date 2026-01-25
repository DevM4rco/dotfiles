vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = function(mode, l, r, desc)
	vim.keymap.set(mode, l, r, { desc = desc, silent = true })
end

map('n', '+', '<C-a>')
map('n', '-', '<C-x>')

map('n', '<Esc>', '<cmd>nohl<CR>', 'Clear highlights')

map({ 'n', 'v', 'x' }, 'x', '"_x')

map('n', 'dw', 'vb"_d', 'Delete a word backwards')
map('n', '<leader>a', 'gg<S-v>G', 'Select all')

map('n', '<leader>sh', '<C-w>s', 'Split window horizontally')
map('n', '<leader>sv', '<C-w>v', 'Split window vertically')
map('n', '<leader>se', '<C-w>=', 'Make splits equal size')
map('n', '<leader>sx', '<cmd>close<CR>', 'Close current split')

map('n', '<C-Up>', '<C-w>-')
map('n', '<C-Left>', '<C-w>>')
map('n', '<C-Down>', '<C-w>+')
map('n', '<C-Right>', '<C-w><')

map('v', '<', '<gv')
map('v', '>', '>gv')
