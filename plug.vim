"Plugins
"==================================
call plug#begin()

" Color Scheme
Plug 'mhartington/oceanic-next' 

" Essentials
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-commentary'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'windwp/nvim-autopairs'

" Linting
Plug 'AndrewRadev/tagalong.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Syntax highlight
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'vim-python/python-syntax'

call plug#end()
