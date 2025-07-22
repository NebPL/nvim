return {
  "github/copilot.vim",
  event = "InsertEnter",
  config = function()
    vim.g.copilot_no_tab_map = false  -- Tab zum Akzeptieren erlauben
    vim.g.copilot_assume_mapped = false
    -- fallback kannst du so lassen oder auf Tab setzen
    vim.g.copilot_tab_fallback = "<Tab>"  

    -- Optionale eigene Mappings entfernen, wenn du Tab nutzen willst
    -- vim.api.nvim_del_keymap("i", "<leader>v")
  end,
}

