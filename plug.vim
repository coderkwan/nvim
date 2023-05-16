call plug#begin()
" colorscheme
Plug 'sainnhe/gruvbox-material'
" distruction free
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
" statusline
Plug 'nvim-lualine/lualine.nvim'
" bufferline
"Plug 'akinsho/bufferline.nvim'
" glyphs/icons
Plug 'kyazdani42/nvim-web-devicons'
" comment/uncomment code with gcc
Plug 'tpope/vim-commentary'
" autoclose tags
" Plug 'townk/vim-autoclose'
Plug 'jiangmiao/auto-pairs'
" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" auto rename corresponding tag
Plug 'AndrewRadev/tagalong.vim'
" Plug 'nmac427/guess-indent.nvim'
" jsx syntax highlight
Plug 'maxmellon/vim-jsx-pretty'
" indentation guide
Plug 'lukas-reineke/indent-blankline.nvim'
" auto completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" syntax highlight
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

call plug#end()

