"Genera
"==================================
inoremap jk <Esc>
nnoremap <F2> :w<CR>
nnoremap <F3> :q<CR>
nnoremap <F4> :so %<CR>
nnoremap <F5> :PlugInstall<CR>
nnoremap <F7> :PlugClean<CR>
nnoremap <F6> :noh<CR>



nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

" ======================================
" NvimTree
nnoremap <C-n> :NvimTreeToggle<CR>

"==================================
" Telescope
nnoremap <C-l> :Telescope find_files<CR>

"==================================
"Tabline
nmap <Tab> :bnext<Return>
nmap <S-Tab> :bprev<Return>
nmap <C-x> :bw<Return>

