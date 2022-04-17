vim.bo.expandtab = true
vim.o.shiftwidth = 2
vim.bo.tabstop = 2
vim.o.relativenumber = true
vim.o.mouse = "a"
vim.g.rainbow_active = 1

-- Syntax Highlighting --
vim.cmd [[
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
]]

-- Autocomplete UI --
vim.cmd "set completeopt=menu,menuone,noselect"

-- Lsp server setup --
require 'lspconfig'.pyright.setup{}
require 'lspconfig'.tsserver.setup{}
require 'lspconfig'.html.setup{}
require 'lspconfig'.gopls.setup{}
require 'lspconfig'.sumneko_lua.setup{}
require 'lspconfig'.vimls.setup{}
require 'lspconfig'.css.setup{}
require 'lspconfig'.jsonls.setup{}
require 'lspconfig'.cssls.setup{}
require 'lspconfig'.python.setup{}

require('config.autocomplete').setup()
require('config.toggleterm').setup()
require('config.coc').setup()
require('config.cmp').setup()
require('config.treesitter').setup()
require('config.specs').setup()
require('config.lualine').setup()

require 'impatient'
require('nvim-tree').setup(require('config.tree'))
require('startup').setup(require 'config.startup_nvim')
require('which-key').setup{}
