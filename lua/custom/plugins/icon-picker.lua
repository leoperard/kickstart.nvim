return {
  'ziontee113/icon-picker.nvim',
  dependencies = {
    { 'stevearc/dressing.nvim', opts = {} },
  },
  config = function()
    require('icon-picker').setup { disable_legacy_commands = true }

    local opts = { noremap = true, silent = true }

    vim.keymap.set('n', '<Leader><Leader>i', '<cmd>IconPickerNormal<cr>', opts)
    -- I don't want to overwrite the <leader><leader> keymap and I don't think I'll use them anyways
    -- vim.keymap.set('n', '<Leader><Leader>y', '<cmd>IconPickerYank<cr>', opts) --> Yank the selected icon into register
    -- vim.keymap.set('i', '<C-i>', '<cmd>IconPickerInsert<cr>', opts)
  end,
}
