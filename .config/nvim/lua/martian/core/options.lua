local opt = vim.opt -- keepin' it brief

-- line numbers --
opt.relativenumber = true -- because I can't be normal
opt.number = true -- show the absolute line number where my cursor is

-- tabs & indentation --
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping --
opt.wrap = true -- disable line wrapping

-- search settings --
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed cased in your search, assumes you want case-insensitive

-- cursor line --
opt.cursorline = true -- highlight the current cursor line

------------- APPEARANCE -------------

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace --
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard --
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows --
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizonal window to the bottom

-- turn off swapfile --
opt.swapfile = false
