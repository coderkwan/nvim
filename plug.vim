call plug#begin()
"+++++ Color Scheme
Plug 'davidosomething/vim-colors-meh'
"+++++ Essentials
Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-commentary'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'windwp/nvim-autopairs'
Plug 'alvan/vim-closetag'
Plug 'nvim-lualine/lualine.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"++++++ Linting
Plug 'AndrewRadev/tagalong.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"++++++Syntax 
Plug 'maxmellon/vim-jsx-pretty'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'lervag/vimtex'

call plug#end()
