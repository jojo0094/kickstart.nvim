return {
  'stevearc/aerial.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('aerial').setup {
      autojump = true,
      highlight_on_hover = true,
      on_attach = function(bufnr)
        vim.keymap.set('n', '<leader>sb', '<cmd>AerialToggle<CR>', { buffer = bufnr })
      end,
    }
  end,
}
