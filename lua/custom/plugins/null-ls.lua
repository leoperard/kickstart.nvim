return {
  'jose-elias-alvarez/null-ls.nvim',
  ft = { 'go', 'lua', 'markdown', 'python', 'rust', 'terraform', 'hcl' },
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

        -- settings for markdown
        null_ls.builtins.formatting.markdownlint,
      },
    }
  end,
}
