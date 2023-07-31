return {
	'jose-elias-alvarez/null-ls.nvim',
	ft = { 'lua', 'python' },
	opts = function()
		local null_ls = require 'null-ls'

		return {
			sources = {
				-- settings for python
				null_ls.builtins.diagnostics.ruff,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,

				-- settings for lua
				null_ls.builtins.formatting.stylua,
			},
		}
	end,
}
