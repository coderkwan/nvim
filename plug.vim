"bling/vim-bufferlinePlugins
"==================================
call plug#begin()

" Color Scheme
Plug 'davidosomething/vim-colors-meh'

" Essentials
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-commentary'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'windwp/nvim-autopairs'
Plug 'alvan/vim-closetag'
" Plug 'nvim-lualine/lualine.nvim'
Plug 'ap/vim-buftabline'

" Linting
Plug 'AndrewRadev/tagalong.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'lervag/vimtex'

"Syntax highlight
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()
