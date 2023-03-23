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


"Imports
"==================================
runtime ./plug.vim
runtime ./maps.vim


"General
"==================================

let g:python_highlight_all = 1

colorscheme gruvbox-material

" hi Normal guibg=NONE ctermbg=NONE
" hi LineNr guibg=NONE ctermbg=NONE
" hi SignColumn guibg=NONE ctermbg=NONE
" hi EndOfBuffer guibg=NONE ctermbg=NONE


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


