return {
  'declancm/cinnamon.nvim',
  config = function()
    require('cinnamon').setup {
      default_keymaps = true,
      extra_keymaps = true,
      extended_keymaps = true,
      override_keymaps = true,

      always_scroll = true,
      centered = true,
    }
  end,
}
