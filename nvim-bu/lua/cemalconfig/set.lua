
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.undodir = os.getenv('HOME') .. "/.vim/undodir"

vim.opt.title = true
vim.opt.lazyredraw = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.showmatch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.belloff = 'all'
vim.opt.history = 1000
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.laststatus = 2
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.cursorline = true
vim.opt.cmdheight = 1
vim.opt.switchbuf = 'useopen'
vim.opt.showtabline = 1
vim.opt.wildmenu = true
vim.opt.foldmethod = 'manual'
vim.opt.foldenable = false
vim.opt.autoread = true
vim.opt.diffopt = 'vertical'
vim.opt.signcolumn = 'yes'
vim.opt.winwidth = 90
vim.opt.hidden = true
vim.opt.syntax = 'on'
vim.opt.hlsearch = true

