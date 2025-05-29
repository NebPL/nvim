return {
  "github/copilot.vim",
  event = "InsertEnter", -- nur laden wenn man in den Insert-Modus geht
  config = function()
    vim.g.copilot_no_tab_map = true -- verhindert Tab-Akzeptieren
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_tab_fallback = ""

    -- Mappe <leader>v zum Akzeptieren des Vorschlags
    vim.api.nvim_set_keymap("i", "<tab>", 'copilot#Accept("<CR>")', { expr = true, silent = true, noremap = true })
  end,
}

