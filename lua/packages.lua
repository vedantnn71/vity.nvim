require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'arcticicestudio/nord-vim'
  use {
  'vimwiki/vimwiki',
  config = function() 
      vim.g.vimwiki_ext2syntax = {
	  ['.md'] = 'markdown',
	  ['.markdown'] = 'markdown',
	  ['.mdown'] = 'markdown',
      }
  end
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
  }
  use 'stevearc/dressing.nvim'
  use 'luochen1990/rainbow'
  use 'vim-syntastic/syntastic'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'}
    }
  }
  use {'prettier/vim-prettier'}
  use 'rust-lang/rust.vim';
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'mattn/emmet-vim'
  use 'peitalin/vim-jsx-typescript'
  use {
      'styled-components/vim-styled-components'
  }
  use {'neoclide/coc.nvim', branch = 'release'}
  use {'mg979/vim-visual-multi'}
  use 'tpope/vim-surround'
  use 'akinsho/toggleterm.nvim'
  use 'skanehira/denops-docker.vim'
  use 'tmhedberg/SimpylFold'
  use 'MaxMEllon/vim-jsx-pretty'
  use 'jiangmiao/auto-pairs'
  use 'jparise/vim-graphql'
  use 'hail2u/vim-css3-syntax'
  use 'ap/vim-css-color'
  use 'karb94/neoscroll.nvim'
  use 'ryanoasis/vim-devicons'
  use 'dart-lang/dart-vim-plugin'
  use 'ellisonleao/gruvbox.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'sbdchd/neoformat'
  use 'williamboman/nvim-lsp-installer'
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use 'kyazdani42/nvim-palenight.lua'
  use 'sonph/onehalf'
  use 'EdenEast/nightfox.nvim'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  use 'lewis6991/impatient.nvim'
  use 'dstein64/vim-startuptime'
  use {
    'terrortylor/nvim-comment',
    config = function()
      require('nvim_comment').setup()
    end
  }
  use {
    'startup-nvim/startup.nvim',
    requires = {'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim'},
  }
  use 'nvim-treesitter/nvim-treesitter'
  use 'preservim/nerdtree'
  use 'edluffy/specs.nvim'
  use 'kkvh/vim-docker-tools'
end)
