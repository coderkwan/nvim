set nu 
syntax on
set background=dark
set termguicolors
set linebreak 
set autoindent 
filetype plugin indent on
set breakindent 
set tabstop=2 
set shiftwidth=2 
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

let g:gruvbox_material_foreground = 'material'
let g:gruvbox_material_background = 'hard'

colorscheme gruvbox-material

:let g:NERDTreeWinSize=30

" au BufEnter,BufNew *.php :set filetype=html


" hi Normal guibg=NONE ctermbg=NONE
" hi SignColumn guibg=NONE ctermbg=NONE
" hi EndOfBuffer guibg=NONE ctermbg=NONE

"==================================

lua << EOF

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#383830 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#383830 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#383830 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#383830 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#383830 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#383830 gui=nocombine]]

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

--require('bufferline').setup()

require('lualine').setup({
    options ={
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
    }
})


require('nvim-treesitter').setup({
  ensure_installed = { "javascript", "yaml","tsx", "html","json","scss", "typescript", "css", "lua", "vim", "vimdoc", "query" },
})
EOF

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
