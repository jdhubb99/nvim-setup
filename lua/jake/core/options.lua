local opt = vim.opt

-- block cursor
opt.guicursor = ""

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line 
opt.cursorline = true

--appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

--split windows
opt.splitright = true
opt.splitbelow = true

-- considers "-" as part of a word
opt.iskeyword:append("-")

opt.swapfile = false
opt.backup = false

-- search settings
opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 8

opt.updatetime = 50
