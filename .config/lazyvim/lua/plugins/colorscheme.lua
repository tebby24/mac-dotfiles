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
                integrations = {
                    telescope = true,
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
                style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                },
                ---@class color_overrides
                on_colors = function(colors)
                    local white = "#ffffff"
                    colors.border_highlight = white
                    -- colors.fg = white
                end,
                on_highlights = function(highlights, colors)
                    highlights.TelescopePromptBorder = {
                        bg = "#16161e",
                        fg = colors.border_highlight,
                    }
                    highlights.TelescopePromptTitle = {
                        bg = "#16161e",
                        fg = colors.border_highlight,
                    }
                end,
            })
            vim.cmd("colorscheme tokyonight")
        end,
    },
    {
        "tiagovla/tokyodark.nvim",
        opts = {
            transparent_background = true,
        },
        config = function(_, opts)
            require("tokyodark").setup(opts) -- calling setup is optional
            -- vim.cmd([[colorscheme tokyodark]])
        end,
    },
}
