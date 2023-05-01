set nu 
syntax on
set relativenumber 
set termguicolors
set linebreak 
set autoindent 
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

let g:python_highlight_all = 1
let g:closetag_filetypes = 'html,xhtml,phtml,javascriptreact,typescriptreact'

colorscheme meh

"==================================
lua << EOF
    require("nvim-autopairs").setup {}
    require("lualine").setup ({
        options = {
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
        },
        sections = {
            lualine_b = {'branch'},
            lualine_x = {'fileformat', 'filetype'},
        }
   })
    require('telescope').setup({ 
        defaults = {file_ignore_patterns = {"node_modules/*"},}
    })
EOF

"auto select first item on coc list==================================
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

