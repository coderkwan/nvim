filetype plugin indent on
syntax on 
set number
set relativenumber
set numberwidth=2
set termguicolors
set t_Co=256
set linebreak
set autoindent
set breakindent
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set nowritebackup
set signcolumn=yes
set cursorline
set clipboard-=autoselect

"Disable Error highlight
au ColorScheme * hi Error NONE
au ColorScheme * hi ErrorMsg NONE
au GuiEnter * hi Error NONE
au GuiEnter * hi ErrorMsg NONE

"==================================
set statusline=
set statusline+=%#CursorColumn#
set statusline+=\ %10f
set statusline+=%#LineNr#
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %7y
set statusline+=\ %p%%
set statusline+=\ %5l


"Imports
"==================================
runtime ./plug.vim
runtime ./maps.vim


"General
"==================================

let g:python_highlight_all = 1

autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css,*.scss,*.json,*.graphql,*.md,*.yaml,*.html PrettierAsync

let g:closetag_filetypes = 'html,javascriptreact'
let g:closetag_enable_react_fragment = 1

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

colorscheme OceanicNext

hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE


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

" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                    	          \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


