vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.backspace = { "start", "indent", "eol" }
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ ".git", "node_modules", "vendor", "build", "dist" })
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.mouse = ""

vim.opt.formatoptions:append({ "r" })

-- Undercurl
vim.cmd([[let &t_Cs = "\e[60m"]])
vim.cmd([[let &t_Ce = "\e[24m"]])

-- Set up spell checking
vim.opt.spell = true
vim.opt.spelllang = { "en", "pt" }
