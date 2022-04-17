local M = {}

M.setup = function()
  -----------------------------------
  -- Extensions you want to enable --
  -----------------------------------
  local extensions = {"coc-prettier"}

  if vim.fn.isdirectory("./node_modules") then
    vim.g.coc_global_extensions = extensions
  end
end

return M
