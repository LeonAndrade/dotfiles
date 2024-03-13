return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	ft = { "javascriptreact", "typescriptreact", "javascript.jsx", "typescript.tsx", "javascript", "typescript" },
	config = function()
		local ts_status, ts_tools = pcall(require, "typescript-tools")
		if not ts_status then
			print("Error loading ts-tools")
		end
		ts_tools.setup({
			settings = {
				tsserver_plugins = {
					"@styled/typescript-styled-plugin",
				},
				jsx_close_tag = {
					enable = true,
					filetypes = {
						"javascriptreact",
						"typescriptreact",
					},
				},
			},
		})
	end,
}
