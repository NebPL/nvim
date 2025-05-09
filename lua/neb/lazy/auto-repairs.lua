return{
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = {}, -- Optional, wenn du benutzerdefinierte Einstellungen möchtest
  config = function(_, opts)
    require("nvim-autopairs").setup(opts)
  end,
}

