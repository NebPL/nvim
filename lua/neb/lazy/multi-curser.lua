return{
  "terryma/vim-multiple-cursors",
  init = function()
    -- Optional: Eigene Mappings, wenn du willst
    vim.g.multi_cursor_use_default_mapping = 1
    -- Optional: Beispiel eigene Mapping deaktivieren
    -- vim.g.multi_cursor_start_word_key      = '<C-n>'
    -- vim.g.multi_cursor_select_all_word_key = '<A-n>'
  end
}

