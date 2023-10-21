# Undo tree is a godsend when needing to go back in time.
return {
  "mbbill/undotree",
  config = function ()
    local keymap = vim.keymap
    keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
  end
}
