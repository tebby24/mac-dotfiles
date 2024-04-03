return {
    {
        "neovim/nvim-lspconfig",
        -- LSP keymaps
        init = function()
            local keys = require("lazyvim.plugins.lsp.keymaps").get()
            keys[#keys + 1] = { "<Leader>cc", false }
        end,

        opts = {
            diagnostics = {
                float = {
                    border = "rounded",
                },
            },
            servers = {
                pyright = {},
                html = {},
                cssls = {},
                emmet_ls = {},
            },
        },
    },
}
