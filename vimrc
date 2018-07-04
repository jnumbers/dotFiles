
""""""""""""""""""""
"------------------"
"---GENERAL MAPS---"
"------------------"
""""""""""""""""""""
"
"_____________"
"___general___"
map <Space> <Leader>|                   " make space leader key
nnoremap <C-j> <C-e>|                   " scroll down
nnoremap <C-k> <C-y>|                   " scroll up
"map <Leader>c :set cursorline!<CR>

"__________"
"___tabs___"
map <silent> <C-Right> :tabnext<CR>|    " move to next tab
map <silent> <C-Left> :tabprev<CR>|     " move to prev tab
noremap <leader>1 1gt|                  " change to tab #
noremap <leader>2 2gt|                  " change to tab #
noremap <leader>3 3gt|                  " change to tab #
noremap <leader>4 4gt|                  " change to tab #
noremap <leader>5 5gt|                  " change to tab #
noremap <leader>6 6gt|                  " change to tab #
noremap <leader>7 7gt|                  " change to tab #
noremap <leader>8 8gt|                  " change to tab #
noremap <leader>9 9gt|                  " change to tab #

"_____________"
"___buffers___"
set winheight=6
set winminheight=6                      " smallest window possible
map <Leader>w <C-w>|                    " remap window shortcut
nnoremap <C-w>+ <C-w>=|                 " swap window same-height & increase maps
nnoremap <leader>b <C-^>|               " enter number then map to change buffer
nnoremap <leader>bd :bd<CR>|            " delete current buffer
nnoremap <leader>b1 1<C-^>|             " change to buffer #
nnoremap <leader>b2 2<C-^>|             " change to buffer #
nnoremap <leader>b3 3<C-^>|             " change to buffer #
nnoremap <leader>b4 4<C-^>|             " change to buffer #
nnoremap <leader>b5 5<C-^>|             " change to buffer #
nnoremap <leader>b6 6<C-^>|             " change to buffer #
nnoremap <leader>b7 7<C-^>|             " change to buffer #
nnoremap <leader>b8 8<C-^>|             " change to buffer #
nnoremap <leader>b9 9<C-^>|             " change to buffer #


""""""""""""""""""""""""""""""
"----------------------------"
"---GENERAL CONFIG OPTIONS---"
"----------------------------"
""""""""""""""""""""""""""""""
set number                              " show number line
set nowrap                              " no wrapping to next line
set hls                                 " high light search patterns
set is                                  " increment search
set ts=4                                " set tab space to 4
set et                                  " expand tab to spaces
set fdm=syntax                          " fold all code
set shiftwidth=4                        " shift block width
set scrolloff=2                         " lines above & below cursor
set hidden
set encoding=utf-8




"""""""""""""""
"-------------"
"---PLUGINS---"
"-------------"
"""""""""""""""
"
"______________"
"___vim.plug___"
call plug#begin()
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'yuratomo/w3m.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'powerline/fonts'
    Plug 'bling/vim-bufferline'
    Plug 'junegunn/fzf.vim'
    Plug 'kana/vim-submode'
call plug#end()

"_____________"
"___w3m.vim___"
let g:w3m#command = '/usr/bin/w3m'

"______________"
"___nerdtree___"
map <Leader>n :NERDTreeToggle<CR>
map <Leader>f :NERDTreeFind
let NERDTreeShowLineNumbers = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'

"_____________"
"___airline___"
set laststatus=0                         " always show status bar
set tabline=1                            " shows # of tab lines
set noshowmode                           " hides the mode (eg. insert, visual)
set t_Co=256                             " number of colors
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buf_label_first = 0
let g:airline#extensions#tabline#keymap_ignored_filetypes =['nerdtree']
let g:airline#extensions#tabline#tab_min_count = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.maxlinenr = '  '

"_____________"
"___submode___"
let g:submode_timeout = 0                   " disable timeouts
let g:submode_keep_leaving_key = 1          " external cmd executes and exits submode
call submode#enter_with('undo/redo', 'n', '', 'g-', 'g-')                                 " undo by pressing g-
call submode#enter_with('undo/redo', 'n', '', 'g=', 'g+')                                 " redo by pressing g-
call submode#map('undo/redo', 'n', '', '-', 'g-')                                         " undo by repeat -
call submode#map('undo/redo', 'n', '', '=', 'g+')                                         " undo by repeat -
call submode#enter_with('buffHeight', 'n', 's', '<C-w>=', ':exe "resize +6"<CR>')         " inc height by pressing <C-w> =
call submode#enter_with('buffHeight', 'n', 's', '<C-w>-', ':exe "resize -6"<CR>')         " inc height by pressing <C-w> -
call submode#map('buffHeight', 'n', 's', '=', ':exe "resize +6"<CR>')                     " inc height by repeat =
call submode#map('buffHeight', 'n', 's', '-', ':exe "resize -6"<CR>')                     " inc height by repeat -
call submode#enter_with('buffWidth', 'n', 's', '<C-w>>', ':exe "vert resize +6"<CR>')     " inc width by pressing <C-w> >
call submode#enter_with('buffWidth', 'n', 's', '<C-w><', ':exe "vert resize -6"<CR>')     " inc width by pressing <C-w> <
call submode#map('buffWidth', 'n', 's', '>', ':exe "vert resize +6"<CR>')                 " inc width by repeat =
call submode#map('buffWidth', 'n', 's', '<', ':exe "vert resize -6"<CR>')                 " inc width by repeat -


"""""""""""""""""
"---------------"
"---FUNCTIONS---"
"---------------"
"""""""""""""""""
"
"__________________________"
"___relative number line___"
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

