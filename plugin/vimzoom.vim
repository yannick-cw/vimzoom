" Minimal zoom plugin emulating tmux's zoom feature
"

" If set to 1 hides the status bar in the zoomed window
let g:vimzoom#no_bar = 1

" Zoom
function! Zoom()
  if exists("t:zoomed")
    :tab close
  else
    :tab split
    if g:vimzoom#no_bar == 1
      set showtabline=0
    endif
    let t:zoomed = 'Z'
  endif
endfunction

" Allows fetching of status if zoomed in, Z or ''
" Can be use to add zoom status to the statusline
function! IsZoomed()
  if exists("t:zoomed")
    return t:zoomed
  else
    return ''
  endif
endfunction

command! Zoom call Zoom()

