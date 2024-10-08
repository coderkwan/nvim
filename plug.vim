call plug#begin()

" colorscheme
Plug 'folke/tokyonight.nvim'

" statusline
Plug 'nvim-lualine/lualine.nvim'

" bufferline
Plug 'akinsho/bufferline.nvim'

" glyphs/icons
Plug 'kyazdani42/nvim-web-devicons'

" comment/uncomment code with gcc
Plug 'tpope/vim-commentary'

" autoclose tags
Plug 'jiangmiao/auto-pairs'

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }

" auto rename corresponding tag
Plug 'AndrewRadev/tagalong.vim'

" jsx syntax highlight
Plug 'maxmellon/vim-jsx-pretty'

" indentation guide
Plug 'lukas-reineke/indent-blankline.nvim'

" Highlight similar words
Plug 'RRethy/vim-illuminate'

" File Tree
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'

" auto completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" syntax highlight
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'jwalton512/vim-blade'

" php
Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}
Plug 'OmniSharp/omnisharp-vim'

call plug#end()

