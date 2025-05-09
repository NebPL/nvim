return {
  "ThePrimeagen/harpoon", -- Harpoon Plugin
  config = function()
    local harpoon_mark = require("harpoon.mark")
    local harpoon_ui = require("harpoon.ui")

    -- Keymaps für Harpoon
    vim.keymap.set("n", "<Space>a", harpoon_mark.add_file, { desc = "Harpoon: Datei hinzufügen" })
    vim.keymap.set("n", "<Space>g", harpoon_ui.toggle_quick_menu, { desc = "Harpoon: UI öffnen" })

    vim.keymap.set("n", "<Space>h", function() harpoon_ui.nav_file(1) end, { desc = "Harpoon: Datei 1 öffnen" })
    vim.keymap.set("n", "<Space>j", function() harpoon_ui.nav_file(2) end, { desc = "Harpoon: Datei 2 öffnen" })
    vim.keymap.set("n", "<Space>k", function() harpoon_ui.nav_file(3) end, { desc = "Harpoon: Datei 3 öffnen" })
    vim.keymap.set("n", "<Space>l", function() harpoon_ui.nav_file(4) end, { desc = "Harpoon: Datei 4 öffnen" })
  end,
}

