"Display line numbers
"set number

" Enable syntax highlighting
syntax on

" Enable loading of indentation files for specific filetypes
filetype plugin indent on

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Always display the status line, even if only one window is displayed
set laststatus=2

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable mouse 
set mouse=a

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Map <F4> to Paste toggle
nnoremap <F4> :set invpaste paste?<CR>
set pastetoggle=<F4>
set showmode

" colors
set t_Co=256

" cool schemes: elflord,  peaksea 
colorscheme elflord 

nnoremap <F3> :call NextColor(1)<CR>
nnoremap <S-F3> :call NextColor(-1)<CR>
nnoremap <A-F3> :call NextColor(0)<CR>

