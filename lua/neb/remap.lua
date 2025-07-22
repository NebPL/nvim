vim.g.mapleader = " "

vim.opt.timeout = false
--vim.opt.timeoutlen = 150  -- kurz, aber nicht zu kurz (z.B. 150ms)

-- Space als Leader-Key "reinigen"
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Deine anderen Mappings
vim.keymap.set('n', '<leader><space>', ':nohlsearch<CR>', { silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'r', '^', { noremap = true, silent = true })
vim.keymap.set('n', 't', '$', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>e', ':Oil<CR>', { silent = true })
vim.keymap.set('n', '<leader>mc', function() vim.cmd("MultipleCursorsFind") end,
  { desc = "Multiple cursors starten" })
vim.keymap.set('v', 'r', '^', { noremap = true, silent = true })
vim.keymap.set('v', 't', '$', { noremap = true, silent = true })

vim.keymap.set("x", "R", "r", { noremap = true })



