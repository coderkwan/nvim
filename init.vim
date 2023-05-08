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

let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'


colorscheme meh
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
"==================================
lua << EOF
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
EOF

"auto select first item on coc list==================================
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

