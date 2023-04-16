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


"Imports ==================================
runtime ./plug.vim 
runtime ./maps.vim

"General ==================================

let g:python_highlight_all = 1

" autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css,*.scss,*.json,*.md,*.yaml,*.html Prettier

colorscheme meh

" hi Normal guibg=NONE ctermbg=NONE 
" hi LineNr guibg=NONE ctermbg=NONE 
" hi SignColumn guibg=NONE ctermbg=NONE 
" hi EndOfBuffer guibg=NONE ctermbg=NONE

"==================================
lua << EOF
  require("nvim-autopairs").setup {}
  require("nvim-tree").setup {}
  require('telescope').setup({ defaults = {file_ignore_patterns = {"node_modules/*"},}})
EOF

