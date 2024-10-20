return {
	"LeonAndrade/dataform.nvim",
	config = function()
		local status, dataform = pcall(require, "dataform")
		if not status then
			print("Error loading dataform.nvim")
		end
		dataform.setup()
	end,
}
