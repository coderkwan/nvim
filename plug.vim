call plug#begin()
Plug 'wojciechkepka/vim-github-dark'
Plug 'tpope/vim-commentary'
Plug 'townk/vim-autoclose'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'nmac427/guess-indent.nvim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
