return {
	"danilamihailov/beacon.nvim",
	config = function()
		vim.cmd([[
      nmap n n:Beacon<cr>
      nmap N N:Beacon<cr>
      nmap * *:Beacon<cr>
      nmap # #:Beacon<cr>
    ]])

		vim.cmd([[
    let g:beacon_minimal_jump = 0
    let g:beacon_size = 30
    let g:beacon_timeout = 750
    ]])

		vim.cmd([[
    augroup MyCursorLineGroup
      autocmd!
      au WinEnter * setlocal cursorline
      au WinLeave * setlocal nocursorline
    augroup end
    ]])
	end,
}
