" CtrlP
"""""""""""""""""
"set runtimepath^=~/.vim/bundle/ctrlp.vim

" Change the default mapping and the default command to invoke CtrlP
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'

" Exclude files and directory
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(exe|so|dll|pyc)$',
"  \ 'link': 'some_bad_symbolic_links',
"  \ }


" Unite 
"""""""""""""""""
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#profile('default', 'context', {
            \ 'start_insert': 1,
            \ 'winheight': 15,
            \ 'direction': 'botright',
            \ 'ignorecase': 1,
            \ 'prompt': '>',
            \ })

nnoremap <C-p> :Unite file_rec/async:!<CR>


" Airline
"""""""""""""""""
" Enable tab
let g:airline#extensions#tabline#enabled = 1

inoremap <silent> <C-UP> <Esc>:tabprevious<CR>i
inoremap <silent> <C-Down> <Esc>:tabnext<CR>i
inoremap <silent> <C-N> <Esc>:tabnew<CR>i
nmap <C-UP> :tabprevious<CR>
nmap <C-Down> :tabnext<CR>
nmap <C-N> :tabnew<CR>


" Autoformat
"""""""""""""""""
noremap <F7> :Autoformat<CR>


" Emmet
"""""""""""""""""
" remap the default <C-Y> leader
let g:user_emmet_leader_key='<c-n>'

" Enable just for html/css/xml
let g:user_emmet_install_global = 0
autocmd FileType html,css,xml EmmetInstall

" Custom snippets
"let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.vim/extra/snippets_custom.json')), "\n"))


" Taglist
"""""""""""""""""
"let Tlist_Use_Horiz_Window = 1
let Tlist_Use_Right_Window = 1
nnoremap <silent> <F8> :TlistToggle<CR>


" Tasklist
"""""""""""""""""
map <C-t> <Plug>TaskList


" Reminder
"""""""""""""""""
map <unique> <F12> <Plug>Reminder
imap <unique> <F12> <Plug>Reminder

