return {
  {
    'neoclide/coc.nvim',
    branch = 'release',
    build = 'npm install',
    init = function()
      vim.cmd [[
        set hidden
        set nobackup
        set nowritebackup
        set updatetime=300
        set shortmess+=c
        set signcolumn=yes
      ]]
    end,
    config = function()
      -- Keybindings
      local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
      vim.keymap.set("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : "\\<TAB>"', opts)
      vim.keymap.set("i", "<S-TAB>", 'coc#pum#visible() ? coc#pum#prev(1) : "\\<C-h>"', opts)
      vim.keymap.set("i", "<CR>", 'coc#pum#visible() ? coc#pum#confirm() : "\\<CR>"', opts)

      -- LSP-related keybindings
      vim.keymap.set("n", "gd", "<Plug>(coc-definition)", { silent = true })
      vim.keymap.set("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
      vim.keymap.set("n", "gi", "<Plug>(coc-implementation)", { silent = true })
      vim.keymap.set("n", "gr", "<Plug>(coc-references)", { silent = true })

      -- Zeige Doku bei Hover
      vim.keymap.set("n", "K", function()
        if vim.fn.CocAction("hasProvider", "hover") then
          vim.fn.CocActionAsync("doHover")
        else
          vim.cmd("normal! K")
        end
      end, { silent = true })

      -- Autoformat on save (optional)
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*",
        command = "CocCommand editor.action.formatDocument",
      })
    end
  }
}

