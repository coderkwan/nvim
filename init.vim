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


"Imports ==================================
runtime ./plug.vim 
runtime ./maps.vim

"General ==================================
colorscheme moonfly

let g:coc_global_extensions=[ 'coc-pyright','@yaegassy/coc-intelephense','coc-emmet',"coc-omnisharp", 'coc-json', 'coc-blade', 'coc-tsserver', 'coc-css', 'coc-html']

" Set the *.blade.php file to be filetype of blade 

"==================================
lua << EOF
require('bufferline').setup()

vim.filetype.add({
  pattern = {
    ['.*%.blade%.php'] = 'blade',
  },
})

require('lualine').setup({
    options ={
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
    }
})

require("ibl").setup()

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = {"src/parser.c"},
    branch = "main",
  },
  filetype = "blade"
}

require('nvim-treesitter').setup({
  ensure_installed = { "javascript", "yaml","tsx", "html","json","c_sharp","scss", "typescript", "css", "lua", "vim", "vimdoc", "query" },
})

require('telescope').setup({defaults={file_ignore_patterns = {"vendor", "node_modules"}, }})

EOF

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
