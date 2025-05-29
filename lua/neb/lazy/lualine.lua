return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local colors = {
      white      = "#FFFFFF",
      lightgray  = "#C0C0C0",
      darkgray   = "#303030",
    }

    local my_theme = {
      normal = {
        a = { fg = colors.darkgray, bg = colors.white, gui = "bold" },
        b = { fg = colors.white, bg = colors.lightgray },
        c = { fg = colors.white, bg = colors.darkgray },
      },
      insert = {
        a = { fg = colors.darkgray, bg = colors.white, gui = "bold" },
        b = { fg = colors.white, bg = colors.lightgray },
        c = { fg = colors.white, bg = colors.darkgray },
      },
      visual = {
        a = { fg = colors.darkgray, bg = colors.white, gui = "bold" },
        b = { fg = colors.white, bg = colors.lightgray },
        c = { fg = colors.white, bg = colors.darkgray },
      },
      replace = {
        a = { fg = colors.darkgray, bg = colors.white, gui = "bold" },
        b = { fg = colors.white, bg = colors.lightgray },
        c = { fg = colors.white, bg = colors.darkgray },
      },
      inactive = {
        a = { fg = colors.lightgray, bg = colors.darkgray },
        b = { fg = colors.lightgray, bg = colors.darkgray },
        c = { fg = colors.lightgray, bg = colors.darkgray },
      },
    }

    require("lualine").setup({
      options = {
        theme = my_theme,
        section_separators = '',
        component_separators = '',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'filename' },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {
          function()
            return os.date("%H:%M")
          end,
        },
        lualine_z = { 'location' },
      },
    })
  end,
}

