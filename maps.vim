"Genera
"==================================
inoremap jk <Esc>
nnoremap <F2> :q<CR>
nnoremap <F3> :w<CR>
nnoremap <F4> :so %<CR>
nnoremap <F5> :PlugInstall<CR>
nnoremap <F7> :PlugClean<CR>
nnoremap <F6> :noh<CR>
nnoremap <C-a> :q <CR>
nnoremap <C-s> :w <CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

" ======================================
" nnoremap <C-b> :NERDTreeFocus<CR>
nnoremap <C-n> :Neotree<CR>
" nnoremap <C-m> :NERDTreeToggle<CR>

"==================================
" Telescope
nnoremap <C-l> :Files <CR>
nnoremap <C-b> :Buffers <CR>
"==================================
" php-html
nnoremap <C-/> :set filetype=php <CR>
nnoremap <C-.> :set filetype=html <CR>

"==================================
"Tabline
nmap <Tab> :bnext<Return>
nmap <S-Tab> :bprev<Return>
nmap <C-x> :bw<Return>
