return{
  'neoclide/coc.nvim',
  branch = 'release',
  build = 'npm install',
  init = function()
    vim.cmd [[
      " Optional: Disable default Neovim LSP if du coc allein benutzen willst
      set hidden
      set nobackup
      set nowritebackup
      set updatetime=300
      set shortmess+=c
      set signcolumn=yes
    ]]
  end
}

