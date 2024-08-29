vim.g.autoformat = false

local opt = vim.opt

-- keep many lines visible around cursor
opt.scrolloff = 10
-- tab and indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
-- search settings
opt.ignorecase = true
opt.smartcase = true
-- splits 
opt.splitright = true
opt.splitbelow = true
