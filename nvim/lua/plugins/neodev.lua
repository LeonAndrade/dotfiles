return {
	"folke/neodev.nvim",
	opts = {},
	config = function()
		local status, neodev = pcall(require, "neodev")
		if not status then
			print("Error loading neodev")
		end
		neodev.setup({})
	end,
}
