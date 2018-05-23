let g:vimtex_view_method = 'skim'
nmap <F1> <plug>(vimtex-compile-ss)
imap <F1> <plug>(vimtex-compile-ss)
nmap <F2> <plug>(vimtex-toc-open)

" Disable overfull/underfull \hbox and all package warnings
let g:vimtex_quickfix_latexlog = {
      \ 'overfull' : 0,
      \ 'underfull' : 0,
      \ 'packages' : {
      \   'default' : 0,
      \ },
      \}
