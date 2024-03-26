return {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        build = ":Copilot auth",
        opts = {
            suggestion = {
                enabled = true,
                auto_trigger = false,
                debounce = 75,
                keymap = {
                    accept = "<Tab>",
                    accept_word = false,
                    accept_line = false,
                    next = "<C-]",
                    prev = "<C-[>",
                    dismiss = "<Esc>",
                },
            },
            panel = { enabled = false },
            filetypes = {
                markdown = true,
                help = true,
            },
        },
    },
}
