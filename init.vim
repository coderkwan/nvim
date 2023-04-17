" filetype plugin indent on 
set nu 
syntax on
" set relativenumber 
set termguicolors
set linebreak 
set autoindent 
set breakindent 
set tabstop=4 
set shiftwidth=4 
set expandtab 
" set signcolumn=yes 
set cursorline 
set clipboard-=autoselect 
set nobackup 
set nowritebackup 
set updatetime=300 
" setlocal spell spelllang=en_us

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15


"Imports ==================================
runtime ./plug.vim 
runtime ./maps.vim

"General ==================================

let g:python_highlight_all = 1
let g:closetag_filetypes = 'html,xhtml,phtml,javascriptreact,typescriptreact'


colorscheme meh

" hi Normal guibg=NONE ctermbg=NONE 
" hi LineNr guibg=NONE ctermbg=NONE 
" hi SignColumn guibg=NONE ctermbg=NONE 
" hi EndOfBuffer guibg=NONE ctermbg=NONE

"==================================
lua << EOF
  require("nvim-autopairs").setup {}
  require('telescope').setup({ defaults = {file_ignore_patterns = {"node_modules/*"},}})
EOF

