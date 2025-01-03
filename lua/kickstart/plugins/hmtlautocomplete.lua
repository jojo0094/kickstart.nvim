return {
  -- Autocompletion framework
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip', -- Snippet engine
    },
  },
  -- HTML Tag Autocompletion
  { 'windwp/nvim-ts-autotag', dependencies = { 'nvim-treesitter/nvim-treesitter' }, config = true },
  -- Optional: Emmet-like HTML expansions
  { 'mattn/emmet-vim' },
}
