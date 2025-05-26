-- 1) Leader festlegen
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 2) Leader-Lag minimieren
vim.opt.timeout = true
vim.opt.timeoutlen = 100 -- 0,3 s Wartedauer

-- 3) Reinen Space von der Leader-Logik abkoppeln
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- 4) Deine bisherigen Maps
vim.keymap.set('n', '<leader><space>', ':nohlsearch<CR>', { silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'r', '^', { noremap = true, silent = true })
vim.keymap.set('n', 't', '$', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>e', ':Oil<CR>', { silent = true })
vim.keymap.set('n', '<leader>mc', function() vim.cmd("MultipleCursorsFind") end,
	{ desc = "Multiple cursors starten" })
