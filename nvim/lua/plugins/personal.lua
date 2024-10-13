return {
	-- 	"LeonAndrade/dataform.nvim",
	dir = "~/projects/dataform.nvim",
	config = function()
		local dataform_status, dataform = pcall(require, "dataform")
		if not dataform_status then
			print("error loading dataform.nvim")
		end
		dataform.setup()
	end,
}
