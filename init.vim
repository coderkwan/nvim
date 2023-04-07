filetype plugin indent on 
syntax on 
set nu 
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
" setlocal spell spelllang=en_us


"Imports ==================================
runtime ./plug.vim 
runtime ./maps.vim


"General ==================================

let g:python_highlight_all = 1

colorscheme gruvbox-material




hi Normal guibg=NONE ctermbg=NONE 
hi LineNr guibg=NONE ctermbg=NONE 
hi SignColumn guibg=NONE ctermbg=NONE 
hi EndOfBuffer guibg=NONE ctermbg=NONE


"================================== Latex

let g:vimtex_view_method = 'zathura'

" Or with a generic interface: let g:vimtex_view_general_viewer = 'okular' let
" g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'pdflatex'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","




"==================================
lua << EOF
  require("nvim-autopairs").setup {}

  require('telescope').setup({ defaults = {file_ignore_patterns = {"node_modules/*"},}})

  require('nvim-treesitter.configs').setup({
    ensure_installed = { 'c','javascript', 'typescript', 'json', 'python', 'html', 'css', 'bash', 'cpp', 'php', 'regex', 'scss', 'sql', 'tsx', 'vim', 'yaml','markdown'}
  })
  

require('lualine').setup({
       options = {
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
       },
       sections = {
            lualine_b = {'branch'},
            lualine_x = {'fileformat', 'filetype'},
       }
   })


  require("nvim-tree").setup({
    view = {
    width = 24,
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


