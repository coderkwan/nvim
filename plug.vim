call plug#begin()

" colorscheme
Plug 'folke/tokyonight.nvim'

" statusline
Plug 'nvim-lualine/lualine.nvim'

" bufferline
Plug 'akinsho/bufferline.nvim'

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


" auto completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

