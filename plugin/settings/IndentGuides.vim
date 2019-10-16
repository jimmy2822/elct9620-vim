" Indent Color
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_auto_colors = 0
autocmd Colorscheme * :hi IndentGuidesOdd  ctermbg=NONE
autocmd Colorscheme * :hi IndentGuidesEven ctermbg=NONE
