return {
    {
        "catppuccin/nvim",
        priority = 1000, -- Ensure it loads first
        config = function()
            require("catppuccin").setup({
                color_overrides = {
                    mocha = {
                        base = "#000000",
                        mantle = "#000000",
                        crust = "#000000",
                    },
                },
                transparent_background = true,
            })
            -- vim.cmd("colorscheme catppuccin-mocha")
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                },
            })
            vim.cmd("colorscheme tokyonight")
        end,
    },
}
