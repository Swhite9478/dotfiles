return {
	"puremourning/vimspector",
	config = function()
		vim.cmd([[
    let g:vimspector_sidebar_width = 85
    let g:vimspector_bottombar_height = 15
    let g:vimspector_terminal_maxwidth= 70
    ]])

		vim.cmd([[
    nmap <F9> <cmd>call vimspector#Launch()<cr>
    nmap <F5> <cmd>call vimspector#StepOver()<cr>
    nmap <F8> <cmd>call vimspector#Reset()<cr>
    nmap <F11> <cmd>call vimspector#StepOver()<cr>
    nmap <F12> <cmd>call vimspector#StepOut()<cr>
    nmap <F10> <cmd>call vimspector#StepInto()<cr>
    ]])

		local keymap = vim.keymap

		keymap.set(
			"n",
			"<leader>db",
			":call vimspector#ToggleBreakpoint()<cr>",
			{ desc = "Vimspector toggle breakpoint - [D]ebug [b]reakpoint" }
		)

		keymap.set(
			"n",
			"<leader>dw",
			":call vimspector#AddWatch()<cr>",
			{ desc = "Vimspector Add Watch - [D]ebug [w]atch" }
		)
		keymap.set(
			"n",
			"<leader>de",
			":call vimspector#Evaluate()<cr>",
			{ desc = "Vimspector Evaluate - [D]ebug [e]valuate" }
		)
	end,
}
