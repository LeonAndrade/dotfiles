return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			-- Load telescope
			local status, telescope = pcall(require, "telescope")
			if not status then
				print("error loading telescope")
			end

			-- Load telescope builtin module
			local builtin_status, builtin = pcall(require, "telescope.builtin")
			if not builtin_status then
				print("error loading telescope.builtin")
			end

			-- Load telescope actions module
			local actions_status, actions = pcall(require, "telescope.actions")
			if not actions_status then
				print("error loading telescope.actions")
			end

			telescope.setup({
				defaults = {
					mappings = {
						i = {
							["<esc>"] = actions.close,
							["<C-u>"] = false,
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
						},
					},
				},
				pickers = {
					find_files = {
						find_command = { "fd", "--type", "f", "--strip-cwd-prefix" },
					},
				},
			})

			telescope.load_extension("fzf")

			local opts = { noremap = true, silent = true }
			vim.keymap.set("n", "<leader>f", builtin.find_files, opts)
			vim.keymap.set("n", "<leader>b", ":Telescope buffers sort_mru=true sort_lastused=true<CR>", opts)
			vim.keymap.set("n", "<leader>ts", builtin.live_grep, opts)
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	},
}
