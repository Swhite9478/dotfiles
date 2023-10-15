-- Add an autocommand to run the command when a new buffer is created
vim.cmd([[autocmd BufReadPre * lua require('quicknote').ShowNoteSigns()]])
