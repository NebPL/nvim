return{
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "lua", "javascript", "html", "css", "python", "c", "java", "go" }, -- passe nach Wunsch an
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    }
  end
}

