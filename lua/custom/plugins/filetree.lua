-- Configure tree file explorer
vim.cmd [[ let g:neo_tree_remove_legacy_commands = 1 ]]

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = false,
        show_hidden_count = false,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          '.git',
          '__pycache__',
        },
        never_show = { '**/__pycache__' },
      },
    },
  },
}
