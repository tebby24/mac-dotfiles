vim.g.mapleader = " "

vim.wo.relativenumber = true
vim.opt.scrolloff = 100

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- lsp
local _border = "rounded"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = _border,
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = _border,
})

vim.diagnostic.config({
    float = { border = _border },
})
