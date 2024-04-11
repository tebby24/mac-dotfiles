return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		local toggleterm = require("toggleterm")
		toggleterm.setup({
			direction = "float",
			float_opts = {
				border = "curved",
			},
		})

		-- keymaps
		vim.keymap.set({ "n", "t" }, "<C-_>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
	end,
}
