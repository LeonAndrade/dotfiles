return {
	"stevearc/conform.nvim",
	config = function()
		local status, conform = pcall(require, "conform")
		if not status then
			print("Error loading conform.nvim")
		end

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				go = { "goimports", "gofmt" },
				javascript = { "prettier" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})
	end,
}
