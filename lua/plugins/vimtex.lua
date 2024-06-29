return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    vim.cmd([[set conceallevel=2]])
    vim.cmd([[let g:tex_conceal='abdmg']])
  end,
}
