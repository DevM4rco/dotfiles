vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = function(mode, l, r, desc)
	vim.keymap.set(mode, l, r, { desc = desc, silent = true })
end

-- increment/decrement
map('n', '+', '<C-a>')
map('n', '-', '<C-x>')

-- command mode
map('n', ';', ':')

-- clear highlights
map('n', '<Esc>', '<cmd>nohl<CR>')

-- do things without affecting the registers
map({ 'n', 'v', 'x' }, 'x', '"_x')
map('n', '<leader>p', '"0p')

map('n', 'dw', 'vb"_d', 'Delete a word backwards')
map('n', '<leader>a', 'gg<S-v>G', 'Select all')

-- window management
map('n', '<leader>sh', '<C-w>s', 'Split window horizontally')
map('n', '<leader>sv', '<C-w>v', 'Split window vertically')
map('n', '<leader>se', '<C-w>=', 'Make splits equal size')
map('n', '<leader>sx', '<cmd>close<CR>', 'Close current split')
map('n', '<leader>sm', '<cmd>MaximizerToggle<CR>', 'Maximize/minimize split')

-- resize window
map('n', '<C-Up>', '<C-w>+')
map('n', '<C-Left>', '<C-w><')
map('n', '<C-Down>', '<C-w>-')
map('n', '<C-Right>', '<C-w>>')

-- stay in indent mode
map('v', '<', '<gv')
map('v', '>', '>gv')
