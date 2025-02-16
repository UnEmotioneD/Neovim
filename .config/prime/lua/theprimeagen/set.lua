local o = vim.opt

o.guicursor = ""

o.number = true
o.relativenumber = true

local indent = 2
o.tabstop = indent
o.softtabstop = indent
o.shiftwidth = indent
o.expandtab = true

o.smartindent = true

o.wrap = false

o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true

o.hlsearch = false
o.incsearch = true

o.termguicolors = true

o.scrolloff = 8
o.signcolumn = "yes"
o.isfname:append("@-@")

o.updatetime = 50

o.colorcolumn = "80"
