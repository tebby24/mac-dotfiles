local keymap = vim.keymap
local opts = { noremap = false, silent = true }

-- Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)

-- File navigation
keymap.set("n", "<C-p>", "")

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
