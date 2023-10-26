local cmd = vim.cmd

-- detect .tf files and set their type to terraform automatically
cmd([[
  augroup terraform_fileset
    autocmd!
    autocmd BufRead,BufNewFile *.tf set filetype=terraform
  augroup END
]])
