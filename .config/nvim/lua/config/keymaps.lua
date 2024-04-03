local keymap = vim.keymap
local opts = { noremap = false, silent = true }

-- Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)

-- File navigation
local telescope = require("telescope.builtin")
keymap.set("n", "<C-p>", telescope.find_files)

local harpoon = require("harpoon")
keymap.set({ "n", "v", "i" }, "<C-a>", function()
    harpoon:list():prev()
end)
keymap.set({ "n", "v", "i" }, "<C-d>", function()
    harpoon:list():next()
end)

-- Copilot Chat
local chat = require("CopilotChat")
keymap.set("n", "<Leader>cc", function()
    chat.toggle()
end, opts)
keymap.set("v", "<Leader>ce", ":CopilotChatExplain<Return>", opts)
keymap.set("n", "<leader>ccq", function()
    local input = vim.fn.input("Quick Chat: ")
    if input ~= "" then
        require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
    end
end)

-- Diagnostics
vim.g["diagnostics_active"] = true
function Toggle_diagnostics()
    if vim.g.diagnostics_active then
        vim.g.diagnostics_active = false
        vim.diagnostic.disable()
    else
        vim.g.diagnostics_active = true
        vim.diagnostic.enable()
    end
end

vim.keymap.set(
    "n",
    "<leader>xd",
    Toggle_diagnostics,
    { noremap = true, silent = true, desc = "Toggle vim diagnostics" }
)

-- deleted keymaps
keymap.del("n", "<leader>ww")
keymap.del("n", "<leader>wd")
keymap.del("n", "<leader>w-")
keymap.del("n", "<leader>w|")
