return {
  'andymass/vim-matchup',
  -- lazy load on movement so it doesn't slow startup
  event = 'CursorMoved',
  config = function()
    -- optional settings:
    vim.g.matchup_matchparen_offscreen = { method = 'popup' }
    vim.g.matchup_surround_enabled = 1
    -- vim-matchup extends and improves % (you can still use %)
  end,
}
