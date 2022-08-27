filetype plugin indent on
syntax on 
set nu
set relativenumber
set termguicolors
"set t_Co=256
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
set cmdheight=2


"Disable Error highlight
au ColorScheme * hi Error NONE
au ColorScheme * hi ErrorMsg NONE
au GuiEnter * hi Error NONE
au GuiEnter * hi ErrorMsg NONE

"==================================



"Imports
"==================================
runtime ./plug.vim
runtime ./maps.vim



"General
"==================================

let g:python_highlight_all = 1

colorscheme OceanicNext


"==================================
lua << EOF
  require("nvim-autopairs").setup {}

  require('telescope').setup({ defaults = {file_ignore_patterns = {"node_modules/*"},}})

  require("nvim-tree").setup({
    view = {
    width = 25,
    mappings = {
          list = {
            { key = "r", action = "refresh" },
          },
        },
      },
    })

EOF

"==================================

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                    	          \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


