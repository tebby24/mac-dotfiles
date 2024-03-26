return {
    -- LSP keymaps
    {
        "neovim/nvim-lspconfig",
        init = function()
            local keys = require("lazyvim.plugins.lsp.keymaps").get()
            keys[#keys + 1] = { "<Leader>cc", false }
        end,
    },
}
