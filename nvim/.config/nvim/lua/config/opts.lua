vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.termguicolors = true

vim.opt.colorcolumn = "80"

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- autocmd
local augroup = vim.api.nvim_create_augroup
local AshGroup = augroup("Ash", {})

local autocmd = vim.api.nvim_create_autocmd

autocmd("LspAttach", {
	group = AshGroup,
	pattern = "*",
	command = [[%s/\s\+$//e]],
})
