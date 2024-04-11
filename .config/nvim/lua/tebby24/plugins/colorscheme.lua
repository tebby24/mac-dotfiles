return {
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
    }
}
