return {
	"voldikss/vim-floaterm",
	config = function()
		local map = vim.keymap

		map.set(
			"n",
			"<leader>ft",
			":FloatermNew --name=myfloat --height=0.9 --width=0.8 --autoclose=2 <CR>",
			{ desc = "Open up a new [F]loating [T]erminal" }
		)
		map.set("n", "<leader>tt", ":FloatermToggle myfloat<CR>", { desc = "[T]oggle floating [T]erminal window" })
		map.set("n", "<leader>kt", ":FloatermKill!<CR>", { desc = "[K]ill floating [T]erminal" })
		map.set("t", "<Esc>", "<C-\\><C-n>:q<CR>", { desc = "Escape floating terminal" })
	end,
}
