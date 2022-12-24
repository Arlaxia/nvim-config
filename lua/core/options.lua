-- Line numbers
vim.opt.number = true             -- Activates line numbers
vim.opt.relativenumber = true     -- Sets line numbers to relative to current line

-- Indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

-- Backups and undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search options
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true          -- No ignore case when pattern has uppercase 

-- Visual options
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.colorcolumn = "88"

-- Other
vim.opt.updatetime = 50
vim.opt.iskeyword:append "-"

