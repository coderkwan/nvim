filetype plugin indent on
syntax on 
set number
set relativenumber
set numberwidth=3
set termguicolors
set t_Co=256
set linebreak
set autoindent
set breakindent
set tabstop=3
set shiftwidth=3
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

" let g:ale_sign_error = ""
" let g:ale_sign_info = ""
" let g:ale_sign_warning = ""
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_info_str = 'I'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

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

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                    	          \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


