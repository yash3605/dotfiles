-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.showtabline = 0 -- no native tab bar
vim.o.winbar = "" -- no winbar (belt & suspenders)
vim.o.laststatus = 3 -- single global statusline (mini.statusline default)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.guicursor = ""
vim.opt.termguicolors = true
vim.opt.winborder = "rounded"
vim.opt.colorcolumn = "80"

vim.o.wrap = false
vim.o.number = true
vim.o.relativenumber = true

vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.inccommand = "split"

vim.o.signcolumn = "yes"
vim.o.scrolloff = 10
vim.o.cursorline = true

vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.o.confirm = true

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
