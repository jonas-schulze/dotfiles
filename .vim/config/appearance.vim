" Use solarized colorscheme
set background=dark
colorscheme solarized

" Enable line numbers
set number
" Show the cursor position
set ruler

" Show page guide
let &colorcolumn="+" . join(range(1,10), ",+")

" Disable highlighting of line numbers and page guide
set notermguicolors
