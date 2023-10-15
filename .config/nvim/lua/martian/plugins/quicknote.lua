return {
	"RutaTang/quicknote.nvim",
	config = function()
		local quicknote = require("quicknote")
		quicknote.setup({
			mode = "resident", -- "portable" | "resident", default to "portable"
			sign = "󰹕", --"N", -- This is used for the signs on the left side (refer to ShowNoteSigns() api).
			-- You can change it to whatever you want (eg. some nerd fonts icon), 'N' is default
			filetype = "md",
			git_branch_recognizable = true, -- If true, quicknote will separate notes by git branch
			-- But it should only be used with resident mode,  it has not effect used with portable mode
		})

		-- set keymaps
		local keymap = vim.keymap -- for brevity
		local requireString = "lua require('quicknote')"

		keymap.set(
			"n",
			"<leader>nt",
			"<cmd>" .. requireString .. ".ToggleNoteSigns()<cr>",
			{ desc = "Quick[N]ote [T]oggle" }
		)

		keymap.set(
			"n",
			"<leader>qn",
			"<cmd>"
				.. requireString
				.. ".NewNoteAtCurrentLine()<cr>"
				.. "<cmd>"
				.. requireString
				.. ".OpenNoteAtCurrentLine()<cr>",
			{ desc = "Make a [Q]uick [N]ote at current line" }
		)

		keymap.set(
			"n",
			"<leader>dn",
			"<cmd>" .. requireString .. ".DeleteNoteAtCurrentLine()<cr>",
			{ desc = "[D]elete [N]ote at current line" }
		)

		keymap.set(
			"n",
			"<leader>nn",
			"<cmd>" .. requireString .. ".JumpToNextNote()<cr>",
			{ desc = "Jump to n<cmd>:lua require('quicknote').OpenNoteAtCurrentLine()<cr>ext [N]ote in file" }
		)

		keymap.set(
			"n",
			"<leader>np",
			"<cmd>" .. requireString .. ".JumpToPreviousNote()<cr>",
			{ desc = "Jump to [N]ote [P]revious in file" }
		)
	end,
	dependencies = { "nvim-lua/plenary.nvim" },
}
