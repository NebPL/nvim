-- ~/.config/nvim/lua/colors.lua

local function ColorMyPencils(color)
	color = color or "monochrome"
	vim.cmd.colorscheme(color)

	-- Hintergrund setzen – dunkler Stil
	--vim.api.nvim_set_hl(0, "Normal", { bg = "#0F0A00" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#0F0A00" })

	-- Falls du Float transparent willst, nimm stattdessen:
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {


	{
    "projekt0n/github-nvim-theme"
	},


	{
		"kdheepak/monochrome.nvim"
	},
	{
		"Abstract-IDE/Abstract-cs"
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		lazy = false,
		config = function()
			require("rose-pine").setup({
				disable_background = false, -- weil wir's manuell setzen
				disable_float_background = true,
				styles = {
					bold = true,
					italic = true,
					transparency = false,
				},
			})
			ColorMyPencils()
		end,
	},
}
