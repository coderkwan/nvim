syntax enable filetype indent on
set number
set relativenumber
set numberwidth=3
" set mouse=a
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
set foldcolumn=1
set cursorline
set clipboard-=autoselect


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
" let g:buffet_always_show_tabline = 0

let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material 


" let g:ale_sign_column_always = 1
let g:ale_sign_error = ""
let g:ale_sign_info = ""
let g:ale_sign_warning = ""
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_info_str = 'I'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'


let g:clang_library_path='/usr/lib/llvm-3.8/lib'

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

