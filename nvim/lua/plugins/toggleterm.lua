return {
	"akinsho/toggleterm.nvim",
	tag = "*",
	config = function()
		local status, toggleterm = pcall(require, "toggleterm")
		if not status then
			print("Error loading toggleterm")
		end

		toggleterm.setup({
			open_mapping = [[<c-\>]],
			direction = "float",
			size = 20,
		})

		local Terminal = require("toggleterm.terminal").Terminal
		local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

		function _LAZYGIT_TOGGLE()
			lazygit:toggle()
		end

		local python = Terminal:new({ cmd = "python3", hidden = true })
		function _PYTHON_TOGGLE()
			python:toggle()
		end

		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "<leader>lz", ":lua _LAZYGIT_TOGGLE()<cr>", opts)
		vim.keymap.set("n", "<leader>ty", ":lua _PYTHON_TOGGLE()<cr>", opts)
	end,
}
