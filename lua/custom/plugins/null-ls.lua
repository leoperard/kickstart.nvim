return {
	"jose-elias-alvarez/null-ls.nvim",
	ft = { "python" },
	opts = function()
		local null_ls = require("null-ls")

		return {
			sources = {
				null_ls.builtins.diagnostics.ruff,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
			},
		}
	end,
}
