-- Liste aller installierten Colorschemes abrufen
local colorschemes = vim.fn.getcompletion("", "color")
local current = 1

function NextColorscheme()
	current = current + 1
	if current > #colorschemes then
		current = 1
	end
	vim.cmd("colorscheme " .. colorschemes[current])
	print("Colorscheme: " .. colorschemes[current])
end

-- Optionales Keymapping, z. B. <leader>c
vim.keymap.set("n", "<leader>c", NextColorscheme, { desc = "Nächstes Colorscheme" })
