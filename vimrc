
""""""""""""""""""
"  general maps  "
""""""""""""""""""
map <Space> <Leader>|           " map space to default leader '\'
map <Leader>w <C-w>|            " change window focus
map <Leader>c :set cursorline!<CR>|    " cursor line on row
" tabs "
map <C-Right> :tabnext<CR>|     " next tab
map <C-Left> :tabprev<CR>|      " prev tab
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab


"""""""""""""""""""""""""""""
"  General Configs Options  "
"""""""""""""""""""""""""""""
set number          "show number line
set nowrap          "no wrapping to next line
set hls             "high light search patterns
set is              "increment search
set ts=4            "set tab space to 4
set et              "expand tab to spaces
set fdm=syntax      "fold all code
set shiftwidth=4    "shift block width
set scrolloff=2     "lines above & below cursor
set hidden
set encoding=utf-8
"set ic              "ignore cases


"""""""""""""""""""""""""""""
"  General Hilight Options  "
"""""""""""""""""""""""""""""
"remove line under number
"hi LineNr term=NONE
"hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white


"""''""""""""""
"  Functions  "
"""""""""""""""
"relative number line
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


""""""""""""""
"  vim-plug  "
""""""""""""""
call plug#begin()
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'yuratomo/w3m.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'powerline/fonts'
    Plug 'bling/vim-bufferline'
    Plug 'junegunn/fzf.vim'
call plug#end()


"""""""""""""""""""""
"  NERDTree Config  "
"""""""""""""""""""""
map <Leader>n :NERDTreeToggle<CR>
map <Leader>f :NERDTreeFind
let NERDTreeShowLineNumbers = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'


""""""""""""""""""""""
"  Powerline Config  "
""""""""""""""""""""""
set laststatus=0    "always show status bar
set tabline=1       "shows # of tab lines
set noshowmode      "hides the mode (eg. insert, visual)
set t_Co=256        "number of colors
let g:airline_theme='angr'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buf_label_first = 0
let g:airline#extensions#tabline#keymap_ignored_filetypes =['nerdtree']
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#buffer_min_count = 0
let g:airline#extensions#tabline#tab_min_count = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.maxlinenr = '  '

""""""""""""""""
"  w3m config  "
""""""""""""""""
let g:w3m#command = '/usr/bin/w3m'

