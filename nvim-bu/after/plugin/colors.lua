function ColorScheme(color)
	color = color or "themer_jellybeans"
	vim.cmd.colorscheme(color)

--	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	-- vim.api.nvim_set_hl(0, "Float", { bg = "none"})
	-- vim.api.nvim_set_hl(0, 'Identifier', {fg = '#00ffff', bg = 'red'})

end

ColorScheme()
