local packer = require("plugins.initPacker")

local plugins = {
   'wbthomason/packer.nvim',
   'arcticicestudio/nord-vim',
   'stevearc/dressing.nvim',
   'luochen1990/rainbow',
   'vim-syntastic/syntastic',
   'olimorris/onedarkpro.nvim',
   'prettier/vim-prettier',
   'rust-lang/rust.vim',
   'pangloss/vim-javascript',
   'leafgarland/typescript-vim',
   'mattn/emmet-vim',
   'peitalin/vim-jsx-typescript',
   'styled-components/vim-styled-components',
   'mg979/vim-visual-multi',
   'tpope/vim-surround',
   'akinsho/toggleterm.nvim',
   'skanehira/denops-docker.vim',
   'tmhedberg/SimpylFold',
   'MaxMEllon/vim-jsx-pretty',
   'jiangmiao/auto-pairs',
   'jparise/vim-graphql',
   'hail2u/vim-css3-syntax',
   'ap/vim-css-color',
   'karb94/neoscroll.nvim',
   'ryanoasis/vim-devicons',
   'dart-lang/dart-vim-plugin',
   'ellisonleao/gruvbox.nvim',
   'neovim/nvim-lspconfig',
   'hrsh7th/cmp-nvim-lsp',
   'hrsh7th/cmp-buffer',
   'hrsh7th/cmp-path',
   'hrsh7th/cmp-cmdline',
   'hrsh7th/nvim-cmp',
   'sbdchd/neoformat',
   'williamboman/nvim-lsp-installer',
   'kyazdani42/nvim-palenight.lua',
   'sonph/onehalf',
   'EdenEast/nightfox.nvim',
   'lewis6991/impatient.nvim',
   'dstein64/vim-startuptime',
   'nvim-treesitter/nvim-treesitter',
   'folke/which-key.nvim',
   'nvim-telescope/telescope-media-files.nvim',
   {
     'akinsho/bufferline.nvim',
     tag = "*",
     requires = 'kyazdani42/nvim-web-devicons'
   },
   'NvChad/nvim-colorizer.lua',
   {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
   },
   'edluffy/specs.nvim',
   'kkvh/vim-docker-tools',
   {
    'iamcco/markdown-preview.nvim',
    ft = 'markdown',
    run = 'cd app && yarn install'
   },
   'github/copilot.vim',
   {
    'neoclide/coc.nvim',
    branch = 'release'
   },
   {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
   },
   {
    'terrortylor/nvim-comment',
    config = function()
      require('nvim_comment').setup()
    end
   },
   {
    'startup-nvim/startup.nvim',
    requires = {'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim'},
   },
   {
    'nvim-telescope/telescope.nvim',
    requires = {'nvim-lua/plenary.nvim'}
   },
   {
    'vimwiki/vimwiki',
    config = function()
        vim.g.vimwiki_ext2syntax = {
        ['.md'] = 'markdown',
        ['.markdown'] = 'markdown',
        ['.mdown'] = 'markdown',
        }
    end
   },
   {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
   },
}

return packer.startup(function(use)
   for _, v in pairs(plugins) do
      use(v)
   end
end)
