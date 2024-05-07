return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		build = ":Copilot auth",
		opts = {
			suggestion = {
				enabled = true,
				keymap = {
					accept = "<C-\\>",
					next = "<C-]>",
					prev = false,
					dismiss = "<C-[>",
				},
			},
			panel = { enabled = false },
			filetypes = {
				markdown = true,
			},
		},
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		config = function()
			require("CopilotChat").setup({
				-- options
				debug = true,
				show_help = false,
				question_header = "## tebby24 ",

				-- keymaps
				vim.keymap.set(
					{ "n", "v" },
					"<leader>cct",
					"<cmd>CopilotChatToggle<cr>",
					{ desc = "Open Copilot Chat" }
				),
				vim.keymap.set("v", "<leader>cce", "<cmd>CopilotChatExplain<cr>", { desc = "Explain selection" }),
				vim.keymap.set("n", "<leader>ccr", "<cmd>CopilotChatReset<cr>", { desc = "Reset Copilot Chat" }),
				vim.keymap.set("n", "<leader>ccb", function()
					local input = vim.fn.input("Chat with buffer: ")
					if input ~= "" then
						require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
					end
				end),
				{ desc = "Chat with buffer" },
			})
		end,
	},
}
