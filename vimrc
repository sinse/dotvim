" Vim plugins
call plug#begin('~/.vim/plugged')

" asynchronous execution library for vim
Plug 'https://github.com/Shougo/vimproc.vim.git', { 'do' : 'make' }

" file manager
Plug 'https://github.com/Shougo/unite.vim'

" status/tabline
Plug 'https://github.com/vim-airline/vim-airline.git'

" Autoformat
Plug 'https://github.com/Chiel92/vim-autoformat'

" Markdown
Plug 'https://github.com/gabrielelana/vim-markdown.git'

" Emmet : expanding abbreviations for html/css/xml/...
Plug 'https://github.com/mattn/emmet-vim.git'

" Task list
Plug 'https://github.com/vim-scripts/TaskList.vim.git'

" Tag list
Plug 'https://github.com/vim-scripts/taglist.vim.git'

" Git
Plug 'https://github.com/tpope/vim-fugitive.git'

" Typescript syntax hightlight
Plug 'https://github.com/leafgarland/typescript-vim.git'

" highlights JavaScript's Template Strings
Plug 'https://github.com/Quramy/vim-js-pretty-template.git'

" indenter for standalone and embedded JavaScript
Plug 'https://github.com/jason0x43/vim-js-indent.git'

" .d.ts management for dtsm users
Plug 'https://github.com/Quramy/vim-dtsm.git'

" .d.ts management for typings users
Plug 'https://github.com/mhartington/vim-typings.git'

call plug#end()


" load my config
let vim_cfg = '~/.vim/config/'

"so vim_cfg . 'general.vim'
so ~/.vim/config/general.vim
so ~/.vim/config/folding.vim
so ~/.vim/config/plugins.vim


" Ultisnips
"=========================================================================
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"


" Shortcuts
"=========================================================================
"nnoremap <C-Up> :tabprevious<CR>
"nnoremap <C-Down> :tabnext<CR>
"imap <C-Up> :tabprevious<CR>
"imap <C-Down> :tabnext<CR>


" Typescript
"=========================================================================
"let g:typescript_compiler_binary = 'tsc'
"let g:typescript_compiler_options = ''
"autocmd FileType typescript :set makeprg=tsc

"autocmd QuickFixCmdPost [^l]* nested cwindow
"autocmd QuickFixCmdPost    l* nested lwindow

