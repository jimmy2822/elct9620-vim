" Custom background, because background always is "light"
let g:background = "dark"

function! s:SwitchBG()
  let g:background = ( g:background == "dark" ? "light" : "dark" )
  let &background = g:background

  colorscheme solarized

  hi IndentGuidesOdd  ctermbg=NONE
  if g:background == "dark"
    hi IndentGuidesEven ctermbg=235
  else
    hi IndentGuidesEven ctermbg=187
  endif


  if exists(":IndentGuidesEnable")
    call indent_guides#enable()
  endif
endfunction

if !exists(":SwitchBG")
    command SwitchBG :call s:SwitchBG()
endif

nmap <silent><unique> <Leader>bg :SwitchBG<CR>

