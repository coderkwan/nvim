set nu 
syntax on
set background=dark
set termguicolors
set linebreak 
set autoindent 
filetype plugin indent on
set breakindent 
set tabstop=4 
set shiftwidth=4 
set expandtab 
set signcolumn=yes 
set cursorline 
set clipboard-=autoselect 
set nobackup 
set nowritebackup 
set updatetime=300 


"Imports ==================================
runtime ./plug.vim 
runtime ./maps.vim

"General ==================================
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'
colorscheme rasmus
" :let g:NERDTreeWinSize=30
" au BufEnter,BufNew *.php :set filetype=html

"==================================
lua << EOF
require('bufferline').setup()

require('lualine').setup({
    options ={
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
    }
})

require('nvim-treesitter').setup({
  ensure_installed = { "javascript", "yaml","tsx", "html","json","scss", "typescript", "css", "lua", "vim", "vimdoc", "query" },
})
EOF

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
