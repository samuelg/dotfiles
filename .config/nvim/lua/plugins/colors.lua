-- vim-hexokinase
-- https://github.com/RRethy/vim-hexokinase

return {
  'rrethy/vim-hexokinase',
  build = 'make hexokinase',
  config = function()
    vim.g.Hexokinase_highlighters = { 'virtual' }
    vim.g.Hexokinase_refreshEvents = { 'BufRead', 'BufWrite', 'InsertLeave' }
  end,
}
