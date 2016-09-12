if exists('loaded_reminder')
  finish
endif
let loaded_reminder = 1
" }}}

" Definition of reminder state {{{
"
let reminderDisplay = 0
" }}}

" Definition of reminder file path {{{
"
let reminderFilePath = $HOME . '/.vim/plugin/reminder/reminder.txt'
" }}}

" Reminder file reader {{{
"
function! Reminder()
  if g:reminderDisplay == 0
    silent! topleft vertical 40split +buffer Reminder 
    let g:reminderDisplay = 1
    set buftype=nofile
    " TODO: Use reminderPath variable
    "0read g:reminderFilePath
    0read $HOME/.vim/plugin/reminder/reminder.txt
    set nonumber
    highlight Memory ctermfg=white ctermbg=blue
    3match Memory /^.\+\ \+:/
  else
    bdelete Reminder
    let g:reminderDisplay = 0
  endif
endfunction
" }}}

" Definition of the shortkey {{{
"if !hasmapto('<Plug>Reminder')
"  map <unique> <F1> <Plug>Reminder
"  imap <unique> <F1> <Plug>Reminder
"endif
"
nnoremap <unique> <script> <Plug>Reminder :call Reminder()<CR>

