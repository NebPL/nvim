vim.g.mapleader = " "

vim.keymap.set('n', '<leader><space>', ':nohlsearch<CR>')


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Gehe zum Anfang der aktuellen Zeile mit 'r'
vim.api.nvim_set_keymap('n', 'r', '^', { noremap = true, silent = true })

-- Gehe zum Ende der aktuellen Zeile mit 't'
vim.api.nvim_set_keymap('n', 't', '$', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', 'no', ':noh<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>e', ':Oil<CR>', { noremap = true, silent = true })




