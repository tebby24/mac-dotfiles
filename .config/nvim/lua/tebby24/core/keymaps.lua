-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- Save file and quit
keymap.set("n", "<Leader>ww", ":update<Return>", { desc = "Update", silent = true })
keymap.set("n", "<Leader>wq", ":w<Return>:quitall<Return>", { desc = "Update", silent = true })
keymap.set("n", "<Leader>qq", ":quit<Return>", { desc = "Quit", silent = true, noremap = true })
keymap.set("n", "<Leader>qa", ":quitall<Return>", { desc = "Quit all", silent = true })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Highlights
keymap.set("n", "<Leader>nh", ":noh<Return>", { desc = "Remove highlights" })

-- Lazy
keymap.set("n", "<Leader>l", ":Lazy<Return>")
