"bling/vim-bufferlinePlugins
"==================================
call plug#begin()

" Color Scheme
Plug 'EdenEast/nightfox.nvim' 
Plug 'mhartington/oceanic-next' 
Plug 'sainnhe/gruvbox-material' 
Plug 'folke/tokyonight.nvim' 
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'getomni/neovim', { 'branch': 'main' }
Plug 'fenetikm/falcon'

" Essentials
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-commentary'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'windwp/nvim-autopairs'
Plug 'nvim-lualine/lualine.nvim'
Plug 'ap/vim-buftabline'

" Linting
Plug 'AndrewRadev/tagalong.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'

"Syntax highlight
Plug 'maxmellon/vim-jsx-pretty'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()
