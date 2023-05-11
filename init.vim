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

colorscheme ghdark

hi Normal guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

"==================================

lua << EOF

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#171717 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#171717 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#171717 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#171717 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#171717 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#171717 gui=nocombine]]

require("indent_blankline").setup {
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}

EOF

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
