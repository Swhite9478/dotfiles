return {
	"simrat39/rust-tools.nvim",
	event = { "BufReadPre", "BufNewFile" },
	ft = { "rust", "rs" },
	dependencies = {
		"neovim/nvim-lspconfig",
		"nvim-lua/plenary.nvim",
		"mfussenegger/nvim-dap",
	},
	config = function()
		local rt = require("rust-tools")

		rt.setup({
			server = {
				on_attach = function(_, bufnr)
					-- Hover actions
					vim.keymap.set("n", "<C-a>", rt.hover_actions.hover_actions, { buffer = bufnr })
					vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
				end,
			},
		})
	end,
}
