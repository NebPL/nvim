local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = "neb.lazy",
	change_detection = { notify = false }
})

return {
	-- Beispiel Plugin
	{ import = "plugins" },
  { import = "colors" },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				disable_background = true,
			})
			vim.cmd.colorscheme("rose-pine")

			-- Hintergrund schwarz machen
			vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
		end,
	},

	-- Weitere Plugins …
}
