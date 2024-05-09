-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- Netrw
keymap.set("n", "-", ":Explore<Return>", { desc = "Open Netrw" })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Highlights
keymap.set("n", "<Leader>nh", ":noh<Return>", { desc = "Remove highlights" })

-- Lazy
keymap.set("n", "<Leader>l", ":Lazy<Return>")

-- Diagnostic
keymap.set("n", "<Leader>Ds", function()
	vim.diagnostic.show()
end, { desc = "Show diagnostics" })

keymap.set("n", "<Leader>Dh", function()
	vim.diagnostic.hide()
end, { desc = "Hide diagnostics" })
