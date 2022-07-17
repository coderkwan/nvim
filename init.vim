syntax enable
filetype indent on
set number
set relativenumber
set mouse=a
set cursorline
set termguicolors
set t_Co=256
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard+=unnamedplus



"Plugins
"==================================
call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sbdchd/neoformat'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/vim-jsx-improve'
Plug 'kdheepak/tabline.nvim'

Plug 'sainnhe/gruvbox-material'


call plug#end()


"General
"==================================
colorscheme gruvbox-material
inoremap jk <Esc>
nnoremap <C-s> :w<CR>
nnoremap <A-q> :q<CR>
nnoremap <F1> :noh<CR>
nnoremap ; :
let python_highlight_all=1

hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE



"==================================
" Nedtree
nnoremap <C-n> :NERDTreeToggle<CR>
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTreeToggle | endif
let g:NERDTreeWinSize=23
nnoremap <C-n> :NERDTreeToggle <CR>



" ======================================
" NeoFormat
autocmd BufWritePre *.html Neoformat

            

"==================================
" Telescope
nnoremap <C-l> :Telescope find_files<CR>



"==================================
"ToggleTerminal
lua <<EOF
require("toggleterm").setup{
size =20,
shade_terminals = true,
persist_size = true,
persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
direction = 'float',
close_on_exit = true, -- close the terminal window when the process exits
float_opts = {
    border = 'single', 
  }
}
EOF
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>



"==================================
" Auto Pairs
lua << EOF
require("nvim-autopairs").setup {}
EOF



"==================================
"LUALINE
lua << END
require('lualine').setup()
END

"==================================
"Tabline
nmap <Tab> :bnext<Return>
nmap <S-Tab> :bprev<Return>
nmap <C-x> :bw<Return>


lua << END
require('tabline').setup()
END
