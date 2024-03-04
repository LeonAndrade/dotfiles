return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		local ai_status, mini_ai = pcall(require, "mini.ai")
		if not ai_status then
			print("error loading mini.ai")
		end
		mini_ai.setup()

		local s_status, surround = pcall(require, "mini.surround")
		if not s_status then
			print("error loading mini.surround")
		end
		surround.setup()

		local trim_status, trailspace = pcall(require, "mini.trailspace")
		if not trim_status then
			print("error loading mini.trailspace")
		end
		trailspace.setup()

		vim.keymap.set("n", "<space>mt", ":lua MiniTrailspace.trim()<CR>", {})
	end,
}
