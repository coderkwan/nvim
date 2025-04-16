set nu 
set rnu
syntax on
filetype plugin indent on
set background=dark
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
set mouse=
set clipboard+=unnamedplus
set colorcolumn=90

runtime ./plug.vim 
runtime ./maps.vim

colorscheme tokyonight-night
let g:netrw_winsize=20
let g:coc_global_extensions=['coc-pyright','coc-emmet', 'coc-json', 'coc-tsserver', 'coc-css', 'coc-html']

" Remove background
highlight Normal guibg=none
highlight NonText guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none


lua << EOF
require('bufferline').setup()

require('lualine').setup({
    options ={
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
    }
})

require("ibl").setup()

require('nvim-treesitter').setup({
  ensure_installed = { "javascript", "yaml","tsx", "html","json", "typescript", "css", "vim", "vimdoc", "query" },
})

require('telescope').setup({defaults={file_ignore_patterns = {"node_modules"}, }})

EOF

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
